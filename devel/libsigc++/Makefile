# $OpenBSD: Makefile,v 1.16 2006/01/06 12:24:55 bernd Exp $

.if ${MACHINE_ARCH} == "hppa"
BROKEN=		"signal-related bug? any program linked with this hangs"
.endif

COMMENT=	"callback framework for C++"

DISTNAME=	libsigc++-1.0.4
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		sigc 0.0
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
