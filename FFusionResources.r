#define TARGET_REZ_CARBON_MACHO 1
#define thng_RezTemplateVersion 1	// multiplatform 'thng' resource
#define cfrg_RezTemplateVersion 1	// extended version of 'cfrg' resource

#include <Carbon/Carbon.r>
#include <QuickTime/QuickTime.r>

#define kPerianManufacturer		'Peri'
#define kFFusionCodecManufacturer	kPerianManufacturer
#define kPerianBaseVersion		(0x00000004)
#define kFFusionCodecVersion		(kPerianBaseVersion+0x00030002)
#define kStartTHNGResID 128

// Resource IDs for FFusion codecs
enum {
    kDivX1CodecInfoResID = 128,
    kDivX2CodecInfoResID,
    kDivX3CodecInfoResID,
    kDivX4CodecInfoResID,
    kDivX5CodecInfoResID,
    k3ivxCodecInfoResID,
    kXVIDCodecInfoResID,
    kMPEG4CodecInfoResID,
    kH264CodecInfoResID,
    kFLV1CodecInfoResID,
    kFlashSVCodecInfoResID,
    kVP6CodecInfoResID,
    kI263CodecInfoResID,
    kVP3CodecInfoResID,
    kHuffYUVCodecInfoResID,
    kMPEG1CodecInfoResID,
    kMPEG2CodecInfoResID,
    kFRAPSCodecInfoResID,
    kSnowCodecInfoResID,
    kNuvCodecInfoResID,
    kIndeo2CodecInfoResID,
    kIndeo3CodecInfoResID,
    kIndeo4CodecInfoResID,
    kIndeo5CodecInfoResID,
    kTSCCCodecInfoResID,
    kZMBVCodecInfoResID,
    kVP6ACodecInfoResID,
    kVP8CodecInfoResID,
    kFFv1CodecInfoResID,
    kTheoraCodecInfoResID,
    kDxtoryCodecInfoResID,
    kCompressCodecInfoResID,
    kCompressCodecManufacturer = kPerianManufacturer,
    kCompressCodecVersion = kPerianBaseVersion
};

// FFusion video codec resources
resource 'dlle' (kDivX1CodecInfoResID) {
        "FFusionCodecComponentDispatch"
};

#define kCodecManufacturer kFFusionCodecManufacturer
#define kCodecVersion kFFusionCodecVersion
#define kEntryPointID kDivX1CodecInfoResID
#define kDecompressionFlags ( codecInfoDoes32 | codecInfoDoes16 | codecInfoDoes8 | codecInfoDoes1 | codecInfoDoesTemporal | cmpThreadSafe )
#define kFormatFlags ( codecInfoDepth32 | codecInfoDepth24 | codecInfoDepth16 | codecInfoDepth8 | codecInfoDepth1 )

// MS-MPEG4 v1
#define kCodecInfoResID kDivX1CodecInfoResID
#define kCodecName "MS-MPEG4 v1"
#define kCodecDescription "Decompresses video stored in MS-MPEG4 version 1 format."
#define kCodecSubType 'MPG4'
#include "PerianResources.r"  
#define kCodecSubType 'mpg4'
#include "PerianResources.r"  
#define kCodecSubType 'DIV1'
#include "PerianResources.r"  
#define kCodecSubType 'div1'
#include "PerianResources.r"  

// MS-MPEG4 v2
#define kCodecInfoResID kDivX2CodecInfoResID
#define kCodecName "MS-MPEG4 v2"
#define kCodecDescription "Decompresses video stored in MS-MPEG4 version 2 format."
#define kCodecSubType 'MP42'
#include "PerianResources.r"  
#define kCodecSubType 'mp42'
#include "PerianResources.r"  
#define kCodecSubType 'DIV2'
#include "PerianResources.r"  
#define kCodecSubType 'div2'
#include "PerianResources.r"  

// DivX 3
#define kCodecInfoResID kDivX3CodecInfoResID
#define kCodecName "DivX 3"
#define kCodecDescription "Decompresses video stored in DivX 3.11 alpha format."
#define kCodecSubType 'MPG3'
#include "PerianResources.r"  
#define kCodecSubType 'mpg3'
#include "PerianResources.r"  
#define kCodecSubType 'MP43'
#include "PerianResources.r"  
#define kCodecSubType 'mp43'
#include "PerianResources.r"  
#define kCodecSubType 'DIV3'
#include "PerianResources.r"  
#define kCodecSubType 'div3'
#include "PerianResources.r"  
#define kCodecSubType 'DIV4'
#include "PerianResources.r"  
#define kCodecSubType 'div4'
#include "PerianResources.r"  
#define kCodecSubType 'DIV5'
#include "PerianResources.r"  
#define kCodecSubType 'div5'
#include "PerianResources.r"  
#define kCodecSubType 'DIV6'
#include "PerianResources.r"  
#define kCodecSubType 'div6'
#include "PerianResources.r"  
#define kCodecSubType 'AP41'
#include "PerianResources.r"  
#define kCodecSubType 'COL0'
#include "PerianResources.r"  
#define kCodecSubType 'col0'
#include "PerianResources.r"  
#define kCodecSubType 'COL1'
#include "PerianResources.r"  
#define kCodecSubType 'col1'
#include "PerianResources.r"  

// DivX 4
#define kCodecInfoResID kDivX4CodecInfoResID
#define kCodecName "DivX 4"
#define kCodecDescription "Decompresses video stored in OpenDivX format."
#define kCodecSubType 'DIVX'
#include "PerianResources.r"  
#define kCodecSubType 'divx'
#include "PerianResources.r"  
#define kCodecSubType 'mp4s'
#include "PerianResources.r"  
#define kCodecSubType 'MP4S'
#include "PerianResources.r"  
#define kCodecSubType 'M4S2'
#include "PerianResources.r"  
#define kCodecSubType 'm4s2'
#include "PerianResources.r"  
#define kCodecSubType 0x04000000
#include "PerianResources.r"  
#define kCodecSubType 'UMP4'
#include "PerianResources.r"  

// DivX 5
#define kCodecInfoResID kDivX5CodecInfoResID
#define kCodecName "DivX 5"
#define kCodecDescription "Decompresses video stored in DivX 5 format."
#define kCodecSubType 'DX50'
#include "PerianResources.r"  

// 3ivx
#define kCodecInfoResID k3ivxCodecInfoResID
#define kCodecName "3ivx"
#define kCodecDescription "Decompresses video stored in 3ivx format."
#define kCodecSubType '3IVD'
#include "PerianResources.r"  
#define kCodecSubType '3ivd'
#include "PerianResources.r"  
#define kCodecSubType '3IV2'
#include "PerianResources.r"  
#define kCodecSubType '3iv2'
#include "PerianResources.r"  

// Xvid
#define kCodecInfoResID kXVIDCodecInfoResID
#define kCodecName "Xvid"
#define kCodecDescription "Decompresses video stored in Xvid format."
#define kCodecSubType 'XVID'
#include "PerianResources.r"  
#define kCodecSubType 'xvid'
#include "PerianResources.r"  
#define kCodecSubType 'XviD'
#include "PerianResources.r"  
#define kCodecSubType 'XVIX'
#include "PerianResources.r"  
#define kCodecSubType 'BLZ0'
#include "PerianResources.r"  

// MPEG-4
#define kCodecInfoResID kMPEG4CodecInfoResID
#define kCodecName "MPEG-4"
#define kCodecDescription "Decompresses video stored in MPEG-4 format."
#define kCodecSubType 'RMP4'
#include "PerianResources.r"  
#define kCodecSubType 'SEDG'
#include "PerianResources.r"  
#define kCodecSubType 'WV1F'
#include "PerianResources.r"  
#define kCodecSubType 'FMP4'
#include "PerianResources.r"  
#define kCodecSubType 'SMP4'
#include "PerianResources.r"  

// MPEG-4 (Apple override)
#define kCodecManufacturer 'appl'
#define kCodecVersion kFFusionCodecVersion + 0x10
#define kCodecInfoResID kMPEG4CodecInfoResID
#define kCodecDescription "Decompresses video stored in MPEG-4 format."
#define kCodecSubType 'mp4v'
#include "PerianResources.r"  

// H.264
#define kCodecVersion kFFusionCodecVersion
#define kCodecManufacturer kFFusionCodecManufacturer
#define kCodecInfoResID kH264CodecInfoResID
#define kCodecName "H.264"
#define kCodecDescription "Decompresses video stored in H.264 format."
#define kCodecSubType 'H264'
#include "PerianResources.r"  
#define kCodecSubType 'h264'
#include "PerianResources.r"  
#define kCodecSubType 'X264'
#include "PerianResources.r"  
#define kCodecSubType 'x264'
#include "PerianResources.r"  
#define kCodecSubType 'DAVC'
#include "PerianResources.r"  
#define kCodecSubType 'VSSH'
#include "PerianResources.r"  
#define kCodecSubType 'AVC1'
#include "PerianResources.r"  
#define kCodecSubType 'avc1'
#include "PerianResources.r"  

// Sorenson H.263
#define kCodecInfoResID kFLV1CodecInfoResID
#define kCodecName "Sorenson H.263"
#define kCodecDescription "Decompresses video stored in Sorenson H.263 format."
#define kCodecSubType 'FLV1'
#include "PerianResources.r"  

// Flash Screen Video
#define kCodecInfoResID kFlashSVCodecInfoResID
#define kCodecName "Flash Screen Video"
#define kCodecDescription "Decompresses video stored in Flash Screen Video format."
#define kCodecSubType 'FSV1'
#include "PerianResources.r"  

// VP6
#define kCodecInfoResID kVP6CodecInfoResID
#define kCodecName "On2 VP6"
#define kCodecDescription "Decompresses video stored in On2 VP6 format."
#define kCodecSubType 'VP60'
#include "PerianResources.r"  
#define kCodecSubType 'VP61'
#include "PerianResources.r"  
#define kCodecSubType 'VP62'
#include "PerianResources.r"  
#define kCodecSubType 'VP6F'
#include "PerianResources.r"  
#define kCodecSubType 'FLV4'
#include "PerianResources.r"  

// I263
#define kCodecInfoResID kI263CodecInfoResID
#define kCodecName "Intel 263"
#define kCodecDescription "Decompresses video stored in Intel 263 format."
#define kCodecSubType 'I263'
#include "PerianResources.r"  

// VP3
#define kCodecInfoResID kVP3CodecInfoResID
#define kCodecName "On2 VP3"
#define kCodecDescription "Decompresses video stored in On2 VP3 format."
#define kCodecSubType 'VP30'
#include "PerianResources.r"  
#define kCodecSubType 'VP31'
#include "PerianResources.r"  

// HuffYUV
#define kCodecInfoResID kHuffYUVCodecInfoResID
#define kCodecName "HuffYUV"
#define kCodecDescription "Decompresses video stored in HuffYUV format."
#define kCodecSubType 'HFYU'
#include "PerianResources.r"  
#define kCodecSubType 'FFVH'
#include "PerianResources.r"  

// MPEG1
#define kCodecInfoResID kMPEG1CodecInfoResID
#define kCodecName "MPEG-1 Video"
#define kCodecDescription "Decompresses video stored in MPEG-1 format."
#define kCodecSubType 'MPEG'
#include "PerianResources.r"  
#define kCodecSubType 'mpg1'
#include "PerianResources.r"  
#define kCodecSubType 'mp1v'
#include "PerianResources.r"  

// MPEG2
#define kCodecInfoResID kMPEG2CodecInfoResID
#define kCodecName "MPEG-2 Video"
#define kCodecDescription "Decompresses video stored in MPEG-2 format."
#define kCodecSubType 'MPG2'
#include "PerianResources.r"  
#define kCodecSubType 'mpg2'
#include "PerianResources.r"  
#define kCodecSubType 'mp2v'
#include "PerianResources.r"  

// FRAPS
#define kCodecInfoResID kFRAPSCodecInfoResID
#define kCodecName "FRAPS"
#define kCodecDescription "Decompresses video stored in FRAPS format."
#define kCodecSubType 'FPS1'
#include "PerianResources.r"  

// SNOW
#define kCodecInfoResID kSnowCodecInfoResID
#define kCodecName "SNOW"
#define kCodecDescription "Decompresses video stored in SNOW format."
#define kCodecSubType 'SNOW'
#include "PerianResources.r"  

// Nuv
#define kCodecInfoResID kNuvCodecInfoResID
#define kCodecName "NuppelVideo"
#define kCodecDescription "Decompresses video stored in NuppelVideo format."
#define kCodecSubType 'RJPG'
#include "PerianResources.r"  
#define kCodecSubType 'NUV1'
#include "PerianResources.r"  

// Indeo 2
#define kCodecInfoResID kIndeo2CodecInfoResID
#define kCodecName "Indeo 2"
#define kCodecDescription "Decompresses video stored in Indeo 2 format."
#define kCodecSubType 'RT21'
#include "PerianResources.r"  

// Indeo 3
#define kCodecInfoResID kIndeo3CodecInfoResID
#define kCodecName "Indeo 3"
#define kCodecDescription "Decompresses video stored in Indeo 3 format."
#define kCodecSubType 'IV32'
#include "PerianResources.r"  
#define kCodecSubType 'iv32'
#include "PerianResources.r"  
#define kCodecSubType 'IV31'
#include "PerianResources.r"  
#define kCodecSubType 'iv31'
#include "PerianResources.r"  

// Indeo 4
#define kCodecInfoResID kIndeo4CodecInfoResID
#define kCodecName "Indeo 4"
#define kCodecDescription "Decompresses video stored in Indeo 4 format."
#define kCodecSubType 'IV41'
#include "PerianResources.r"  
#define kCodecSubType 'iv41'
#include "PerianResources.r"  

// Indeo 5
#define kCodecInfoResID kIndeo5CodecInfoResID
#define kCodecName "Indeo 5"
#define kCodecDescription "Decompresses video stored in Indeo 5 format."
#define kCodecSubType 'IV50'
#include "PerianResources.r"  
#define kCodecSubType 'iv50'
#include "PerianResources.r"  

// TSCC
#define kCodecInfoResID kTSCCCodecInfoResID
#define kCodecName "Techsmith Screen Capture"
#define kCodecDescription "Decompresses video stored in Techsmith Screen Capture format."
#define kCodecSubType 'tscc'
#include "PerianResources.r"  

// ZMBV
#define kCodecInfoResID kZMBVCodecInfoResID
#define kCodecName "DosBox Capture"
#define kCodecDescription "Decompresses video stored in DosBox Capture format."
#define kCodecSubType 'ZMBV'
#include "PerianResources.r"  

// VP6A
#define kCodecInfoResID kVP6ACodecInfoResID
#define kCodecName "On2 VP6A"
#define kCodecDescription "Decompresses video stored in On2 VP6A format."
#define kCodecSubType 'VP6A'
#include "PerianResources.r"  

// VP8
#define kCodecInfoResID kVP8CodecInfoResID
#define kCodecName "On2 VP8"
#define kCodecDescription "Decompresses video stored in On2 VP8 format."
#define kCodecSubType 'VP80'
#include "PerianResources.r"  

// FFv1
#define kCodecInfoResID kFFv1CodecInfoResID
#define kCodecName "FFv1"
#define kCodecDescription "Decompresses video stored in FFv1 format."
#define kCodecSubType 'FFV1'
#include "PerianResources.r"  

// Theora
#define kCodecInfoResID kTheoraCodecInfoResID
#define kCodecName "Theora"
#define kCodecDescription "Decompresses video stored in Theora format."
#define kCodecSubType 'PeTh'
#include "PerianResources.r"  

// Dxtory
#define kCodecInfoResID kDxtoryCodecInfoResID
#define kCodecName "Dxtory"
#define kCodecDescription "Decompresses video stored in Dxtory format."
#define kCodecSubType 'xtor'
#include "PerianResources.r"  

// Compress codec dispatch
resource 'dlle' (kCompressCodecInfoResID) {
        "CompressCodecComponentDispatch"
};

#define kCodecManufacturer kCompressCodecManufacturer
#define kCodecVersion kCompressCodecVersion
#define kEntryPointID kCompressCodecInfoResID
#define kDecompressionFlags ( codecInfoDoes32 | codecInfoDoes16 | codecInfoDoes8 | codecInfoDoes1 | codecInfoDoesTemporal | cmpThreadSafe )
#define kFormatFlags ( codecInfoDepth32 | codecInfoDepth24 | codecInfoDepth16 | codecInfoDepth8 | codecInfoDepth1 )

#define kCodecInfoResID kCompressCodecInfoResID  
#define kCodecName "Uncompressed"
#define kCodecDescription "Compresses video using no compression."
#define kCodecSubType 'raw '
#include "PerianResources.r"  

#define kCodecSubType 'NONE'
#include "PerianResources.r"  

#define kCodecSubType 0
#include "PerianResources.r"  

#define kCodecSubType 'yuv2'
#include "PerianResources.r"  

#define kCodecSubType 'yuvs'
#include "PerianResources.r"  

#define kCodecSubType 'v210'
#include "PerianResources.r"  

#define kCodecSubType 'v216'
#include "PerianResources.r"  

#define kCodecSubType 'v308'
#include "PerianResources.r"  

#define kCodecSubType 'v408'
#include "PerianResources.r"  

#define kCodecSubType 'v410'
#include "PerianResources.r"  

#define kCodecSubType 'r210'
#include "PerianResources.r"  

#define kCodecSubType 'r10k'
#include "PerianResources.r"  

#define kCodecSubType 'BGRA'
#include "PerianResources.r"  