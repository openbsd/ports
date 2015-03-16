# $OpenBSD: Makefile,v 1.9 2015/03/16 18:07:35 naddy Exp $

COMMENT=	OpenAL Utility Toolkit

DISTNAME=	freealut-1.1.0
REVISION=	1
SHARED_LIBS +=  alut                 1.0      # .1.0
CATEGORIES=	audio

HOMEPAGE=	http://www.openal.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m openal>=1.0 pthread sndio

MASTER_SITES=	http://connect.creativelabs.com/openal/Downloads/ALUT/

LIB_DEPENDS=	audio/openal

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-dependency-tracking
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/" \
		LDFLAGS="-L${LOCALBASE}/lib"

TESTS=	errorstuff fileloader memoryloader retrostuff version waveforms

do-test:
.for t in ${TESTS}
	@echo test_${t}
	@cd ${WRKBUILD}/test_suite && ./test_${t}
.endfor

.include <bsd.port.mk>
