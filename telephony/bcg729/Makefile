COMMENT=	software G729A encoder and decoder library

V=		1.1.1
DISTNAME=	bcg729-${V}

SHARED_LIBS +=	bcg729 0.2 # unknown

CATEGORIES=	telephony audio

HOMEPAGE=	http://www.linphone.org/technical-corner/bcg729/

# Dual: GPLv3(only) or commercial
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://gitlab.linphone.org/BC/public/bcg729/-/archive/${V}/

MODULES =	devel/cmake
CONFIGURE_ARGS +=-DENABLE_TESTS=YES

TEST_IS_INTERACTIVE=	Yes

pre-test:
	@if ! [ -e ${WRKBUILD}/test/patterns ]; then echo; echo \
	    ">>> Tests require an additional download. Please fetch"; echo \
	    ">>> http://linphone.org/bc-downloads/bcg729-patterns-v1.1.0.zip"; echo \
	    ">>> and unzip it in ${WRKBUILD}/test"; echo \
	    "#ftp -o ${WRKBUILD}/test/bcg729-patterns-v1.1.0.zip http://linphone.org/bc-downloads/bcg729-patterns-v1.1.0.zip" ; echo \
	    "#unzip -d ${WRKBUILD}test/ ${WRKBUILD}/test/bcg729-patterns-v1.1.0.zip" \
	    echo; exit 1; fi

do-test:
	cd ${WRKBUILD}/test && sh ./testCampaignAll

.include <bsd.port.mk>
