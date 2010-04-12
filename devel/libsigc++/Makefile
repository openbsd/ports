# $OpenBSD: Makefile,v 1.21 2010/04/12 08:39:32 jasper Exp $

# Signal-related bug? any program linked with this hangs
NOT_FOR_ARCHS=	hppa

COMMENT=	callback framework for C++

DISTNAME=	libsigc++-1.0.4
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=		sigc 1.0
MODGNU_SHARED_LIBS=	sigc '-no-undefined'

CATEGORIES=	devel

HOMEPAGE=	http://libsigc.sf.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libsigc/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

DOCDIR=		${PREFIX}/share/doc/libsigc++/
MAKE_FLAGS=	M4=/usr/bin/m4

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCDIR}

do-regress:
.for i in handles misc signals
	@cd ${WRKSRC}/tests/$i; ${MAKE} check-TESTS
.endfor

V=		1.0
SUBST_VARS=	V
.include <bsd.port.mk>
