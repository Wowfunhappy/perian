#define TARGET_REZ_CARBON_MACHO 1
#define thng_RezTemplateVersion 1	// multiplatform 'thng' resource
#define cfrg_RezTemplateVersion 1	// extended version of 'cfrg' resource

#include <Carbon/Carbon.r>
#include <QuickTime/QuickTime.r>

#define kPerianManufacturer		'Peri'
#define kFFissionCodecManufacturer	kPerianManufacturer
#define kPerianBaseVersion		(0x00000004)
#define kFFissionCodecVersion		(kPerianBaseVersion+0x00030002)
#define kStartTHNGResID			180

// Audio format constants
#define kAudioFormatWMA1MS              'WMA1'
#define kAudioFormatWMA2MS              'WMA2'
#define kAudioFormatFlashADPCM          'FADP'
#define kAudioFormatXiphVorbis          'XiVs'
#define kAudioFormatTTA                 'TTA '
#define kAudioFormatDTS                 'DTS '
#define kAudioFormatNellymoser          'NELL'
#define kAudioFormatAC3                 'AC-3'
#define kAudioFormatEnhancedAC3         'EAC3'
#define kAudioFormatXiphSpeex           'XiSp'
#define kAudioFormatXiphFLAC            'XiFL'
#define kAudioFormatXiphOggFramedVorbis 'XoVs'
#define kAudioFormatXiphOggFramedSpeex  'XoSp'
#define kAudioFormatXiphOggFramedFLAC   'XoFL'
#define kAudioFormatReal144             '14_4'
#define kAudioFormatReal288             '28_8'
#define kAudioFormatRealCook            'COOK'
#define kAudioFormatRealSipro           'SIPR'
#define kAudioFormatRealLossless        'RALF'
#define kAudioFormatRealAtrac3          'ATRC'
#define kAudioFormatWavepack            'WVPK'

// Resource IDs for FFission codecs
enum {
    kWMA1MSCodecResourceID = 180,
    kWMA2MSCodecResourceID,
    kFlashADPCMCodecResourceID,
    kXiphVorbisCodecResourceID,
    kMPEG1L1CodecResourceID,
    kMPEG1L12CodecResourceID,
    kMPEG1L2CodecResourceID,
    kTrueAudioCodecResourceID,
    kDTSCodecResourceID,
    kNellymoserCodecResourceID,
    kCompressAC3CodecResourceID,
    kCompressEAC3CodecResourceID,
    kXiphSpeexCodecResourceID,
    kXiphFLACCodecResourceID,
    kXiphOggVorbisCodecResourceID,
    kXiphOggSpeexCodecResourceID,
    kXiphOggFLACCodecResourceID,
    kReal144CodecResourceID,
    kReal288CodecResourceID,
    kRealCookCodecResourceID,
    kRealSiproCodecResourceID,
    kRealLosslessCodecResourceID,
    kRealAtrac3CodecResourceID,
    kWavepackCodecResourceID
};

#define AudioComponentType
#define decompressorComponentType 'adec'
#ifndef cmpThreadSafeOnMac
	#define cmpThreadSafeOnMac 0x10000000
#endif

// FFission audio codec resources
resource 'dlle' (kWMA1MSCodecResourceID) {
        "FFissionDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kWMA1MSCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kWMA1MSCodecResourceID
#define kCodecName "Windows Media Audio 1"
#define kCodecDescription "An AudioCodec that decodes WMA v1 into linear PCM"
#define kCodecSubType kAudioFormatWMA1MS
#include "PerianResources.r"  

#define kCodecInfoResID kWMA2MSCodecResourceID
#define kCodecName "Windows Media Audio 2"
#define kCodecDescription "An AudioCodec that decodes WMA v2 into linear PCM"
#define kCodecSubType kAudioFormatWMA2MS
#include "PerianResources.r"  

#define kCodecInfoResID kFlashADPCMCodecResourceID
#define kCodecName "Flash ADPCM"
#define kCodecDescription "An AudioCodec that decodes Flash ADPCM into linear PCM"
#define kCodecSubType kAudioFormatFlashADPCM
#include "PerianResources.r"  

resource 'dlle' (kXiphVorbisCodecResourceID) {
        "FFissionVBRDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kXiphVorbisCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kXiphVorbisCodecResourceID
#define kCodecName "Vorbis"
#define kCodecDescription "An AudioCodec that decodes Vorbis into linear PCM"
#define kCodecSubType kAudioFormatXiphVorbis
#include "PerianResources.r"  

#define kCodecInfoResID kMPEG1L1CodecResourceID
#define kCodecName "MPEG-1 Layer 1"
#define kCodecDescription "An AudioCodec that decodes MPEG-1 layer 1 audio into linear PCM"
#define kCodecSubType '.mp1'
#include "PerianResources.r"  

#define kCodecInfoResID kMPEG1L12CodecResourceID
#define kCodecName "MPEG-1 Layer 1/2"
#define kCodecDescription "An AudioCodec that decodes MPEG-1 layer 1 or 2 audio into linear PCM"
#define kCodecSubType 0x6d730050
#include "PerianResources.r"  

#define kCodecInfoResID kMPEG1L2CodecResourceID
#define kCodecName "MPEG-1 Layer 2"
#define kCodecDescription "An AudioCodec that decodes MPEG-1 layer 2 audio into linear PCM"
#define kCodecSubType '.mp2'
#include "PerianResources.r"  

#define kCodecInfoResID kTrueAudioCodecResourceID
#define kCodecName "True Audio"
#define kCodecDescription "An AudioCodec that decodes True Audio into linear PCM"
#define kCodecSubType kAudioFormatTTA
#include "PerianResources.r"  

#define kCodecInfoResID kDTSCodecResourceID
#define kCodecName "DTS Coherent Acoustics"
#define kCodecDescription "An AudioCodec that decodes DCA Audio into linear PCM"
#define kCodecSubType kAudioFormatDTS
#include "PerianResources.r"  

#define kCodecInfoResID kNellymoserCodecResourceID
#define kCodecName "Nellymoser ASAO"
#define kCodecDescription "An AudioCodec that decodes Nellymoser ASAO into linear PCM"
#define kCodecSubType kAudioFormatNellymoser
#include "PerianResources.r"  

resource 'dlle' (kCompressAC3CodecResourceID) {
        "CompressAudioDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kCompressAC3CodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kCompressAC3CodecResourceID
#define kCodecName "AC-3"
#define kCodecDescription "An AudioCodec that decodes AC-3 into linear PCM"
#define kCodecSubType kAudioFormatAC3
#include "PerianResources.r"  

#define kCodecInfoResID kCompressEAC3CodecResourceID
#define kCodecName "Enhanced AC-3"
#define kCodecDescription "An AudioCodec that decodes Enhanced AC-3 into linear PCM"
#define kCodecSubType kAudioFormatEnhancedAC3
#include "PerianResources.r"  

resource 'dlle' (kXiphSpeexCodecResourceID) {
        "FFissionVBRDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kXiphSpeexCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kXiphSpeexCodecResourceID
#define kCodecName "Speex"
#define kCodecDescription "An AudioCodec that decodes Speex into linear PCM"
#define kCodecSubType kAudioFormatXiphSpeex
#include "PerianResources.r"  

resource 'dlle' (kXiphFLACCodecResourceID) {
        "FFissionVBRDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kXiphFLACCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kXiphFLACCodecResourceID
#define kCodecName "FLAC"
#define kCodecDescription "An AudioCodec that decodes FLAC into linear PCM"
#define kCodecSubType kAudioFormatXiphFLAC
#include "PerianResources.r"  

resource 'dlle' (kXiphOggVorbisCodecResourceID) {
        "FFissionVBRDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kXiphOggVorbisCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kXiphOggVorbisCodecResourceID
#define kCodecName "Ogg Vorbis"
#define kCodecDescription "An AudioCodec that decodes Ogg Vorbis into linear PCM"
#define kCodecSubType kAudioFormatXiphOggFramedVorbis
#include "PerianResources.r"  

resource 'dlle' (kXiphOggSpeexCodecResourceID) {
        "FFissionVBRDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kXiphOggSpeexCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kXiphOggSpeexCodecResourceID
#define kCodecName "Ogg Speex"
#define kCodecDescription "An AudioCodec that decodes Ogg Speex into linear PCM"
#define kCodecSubType kAudioFormatXiphOggFramedSpeex
#include "PerianResources.r"  

resource 'dlle' (kXiphOggFLACCodecResourceID) {
        "FFissionVBRDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kXiphOggFLACCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kXiphOggFLACCodecResourceID
#define kCodecName "Ogg FLAC"
#define kCodecDescription "An AudioCodec that decodes Ogg FLAC into linear PCM"
#define kCodecSubType kAudioFormatXiphOggFramedFLAC
#include "PerianResources.r"  

resource 'dlle' (kReal144CodecResourceID) {
        "FFissionDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kReal144CodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kReal144CodecResourceID
#define kCodecName "Real Audio 14.4k"
#define kCodecDescription "An AudioCodec that decodes Real Audio 14.4k into linear PCM"
#define kCodecSubType kAudioFormatReal144
#include "PerianResources.r"  

#define kCodecInfoResID kReal288CodecResourceID
#define kCodecName "Real Audio 28.8k"
#define kCodecDescription "An AudioCodec that decodes Real Audio 28.8k into linear PCM"
#define kCodecSubType kAudioFormatReal288
#include "PerianResources.r"  

#define kCodecInfoResID kRealCookCodecResourceID
#define kCodecName "Real Cook"
#define kCodecDescription "An AudioCodec that decodes Real Cook into linear PCM"
#define kCodecSubType kAudioFormatRealCook
#include "PerianResources.r"  

#define kCodecInfoResID kRealSiproCodecResourceID
#define kCodecName "Real Sipro"
#define kCodecDescription "An AudioCodec that decodes Real Sipro into linear PCM"
#define kCodecSubType kAudioFormatRealSipro
#include "PerianResources.r"  

#define kCodecInfoResID kRealLosslessCodecResourceID
#define kCodecName "Real Lossless"
#define kCodecDescription "An AudioCodec that decodes Real Lossless into linear PCM"
#define kCodecSubType kAudioFormatRealLossless
#include "PerianResources.r"  

#define kCodecInfoResID kRealAtrac3CodecResourceID
#define kCodecName "Real Atrac3"
#define kCodecDescription "An AudioCodec that decodes Real Atrac3 into linear PCM"
#define kCodecSubType kAudioFormatRealAtrac3
#include "PerianResources.r"  

resource 'dlle' (kWavepackCodecResourceID) {
        "FFissionDecoderEntry"
};

#define kCodecManufacturer kFFissionCodecManufacturer
#define kCodecVersion kFFissionCodecVersion
#define kEntryPointID kWavepackCodecResourceID
#define kDecompressionFlags cmpThreadSafeOnMac
#define kFormatFlags 

#define kCodecInfoResID kWavepackCodecResourceID
#define kCodecName "Wavepack"
#define kCodecDescription "An AudioCodec that decodes Wavepack into linear PCM"
#define kCodecSubType kAudioFormatWavepack
#include "PerianResources.r"  