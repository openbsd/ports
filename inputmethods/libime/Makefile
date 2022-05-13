COMMENT =	library to support generic input method implementation

DISTNAME =	libime-1.0.11

SHARED_LIBS +=	IMECore		0.0 # 0.0
SHARED_LIBS +=	IMEPinyin	0.0 # 0.0
SHARED_LIBS +=	IMETable	0.0 # 0.0

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/libime

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes
WANTLIB += ${COMPILER_LIBCXX} Fcitx5Utils boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_regex-mt c m

MASTER_SITES =		https://download.fcitx-im.org/fcitx5/libime/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =		https://download.fcitx-im.org/data/
DISTFILES +=		dict.utf8-20211021.tar.xz:0
# Language Model Simplified Chinese, 3-gram
DISTFILES +=		lm_sc.3gm.arpa-20140820.tar.bz2:0
DISTFILES +=		table.tar.gz:0

EXTRACT_SUFX = 		.tar.xz
DIST_SUBDIR =		fcitx

COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/kf5
MODQT5_DEPS =		No

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/boost \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx5 \
			devel/boost
post-patch:
			@cp ${FULLDISTDIR}/dict.utf8-20211021.tar.xz \
				${WRKSRC}/data/
			@cp ${FULLDISTDIR}/lm_sc.3gm.arpa-20140820.tar.bz2 \
				${WRKSRC}/data/
			@cp ${FULLDISTDIR}/table.tar.gz \
				${WRKSRC}/data/
.include <bsd.port.mk>
