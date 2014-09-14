# $OpenBSD: Makefile,v 1.3 2014/09/14 09:38:31 pirofti Exp $

COMMENT =	easy-to-use minimalistic disassembler library

DISTNAME =	udis86-1.7.2
CATEGORIES =	devel

SHARED_LIBS=	udis86		0.0

HOMEPAGE =	http://udis86.sourceforge.net/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=udis86/}

WANTLIB +=	c

MODULES =	lang/python

BUILD_DEPENDS =	devel/yasm \
		textproc/py-sphinx

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
MAKE_ENV =		LIBudis86_VERSION=${LIBudis86_VERSION}

FAKE_FLAGS =	docdir=${PREFIX}/share/doc/udis86/x86

post-build:
	@cd ${WRKBUILD}/docs/manual \
		&& exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html-local

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/udis86/manual
	cd ${WRKBUILD}/docs/manual/html && \
		pax -rw * ${PREFIX}/share/doc/udis86/manual

.include <bsd.port.mk>
