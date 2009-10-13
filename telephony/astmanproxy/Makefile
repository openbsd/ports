# $OpenBSD: Makefile,v 1.1.1.1 2009/10/13 11:10:41 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	proxy for Asterisk Manager Interface
DISTNAME =	astmanproxy-1.22pre081119

CATEGORIES =	telephony

HOMEPAGE =	http://www.voip-info.org/tiki-index.php?page=AstManProxy

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c crypto pthread ssl

# mirrored from git repository
MASTER_SITES =	http://spacehopper.org/mirrors/

MAKE_ENV =	CFLAGS="${CFLAGS}"

MAKE_FLAGS =	SYSCONFDIR=${SYSCONFDIR} \
		LIBDIR=${WRKINST}/${PREFIX}/lib/astmanproxy \
		MODDIR=${PREFIX}/lib/astmanproxy/modules \
		MODDIR_REAL=${WRKINST}/${PREFIX}/lib/astmanproxy/modules \
		CONFDIR=${SYSCONFDIR}/astmanproxy \
		CONFDIR_REAL=${WRKINST}/${PREFIX}/share/examples/astmanproxy \
		PERMDIR=${SYSCONFDIR}/astmanproxy \
		PERMDIR_REAL=${WRKINST}/${PREFIX}/share/examples/astmanproxy

FAKE_FLAGS =	PREFIX=${PREFIX}

USE_GMAKE =	Yes
NO_REGRESS =	Yes
ALL_TARGET =	astmanproxy

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configs/astmanproxy.conf

post-install:
	${INSTALL_DATA} ${WRKSRC}/configs/ssl.conf \
	    ${PREFIX}/share/examples/astmanproxy/proxy-ssl.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/astmanproxy/
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/doc/* \
	    ${PREFIX}/share/doc/astmanproxy

.include <bsd.port.mk>
