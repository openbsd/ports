COMMENT =	library to support generic input method implementation

DISTNAME =	libime-1.0.17

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

SITES =			https://download.fcitx-im.org/fcitx5/libime/

SITES.data =		https://download.fcitx-im.org/data/

# Dictionary and Language Model
# Keep in sync with the post-patch section + upstream list
# https://github.com/fcitx/libime/blob/master/data/CMakeLists.txt
DISTFILES.data +=	dict-20220810.tar.xz
DISTFILES.data +=	lm_sc.arpa-20220810.tar.xz
DISTFILES.data +=	table.tar.gz

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

LIB_DEPENDS =		inputmethods/fcitx \
			devel/boost
post-patch:
			@cp ${FULLDISTDIR}/dict-20220810.tar.xz \
				${WRKSRC}/data/
			@cp ${FULLDISTDIR}/lm_sc.arpa-20220810.tar.xz \
				${WRKSRC}/data/
			@cp ${FULLDISTDIR}/table.tar.gz \
				${WRKSRC}/data/
.include <bsd.port.mk>
