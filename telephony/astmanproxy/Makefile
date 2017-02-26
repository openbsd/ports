# $OpenBSD: Makefile,v 1.6 2017/02/26 20:07:40 sthen Exp $

COMMENT =	proxy for Asterisk Manager Interface
DISTNAME =	astmanproxy-1.22pre081119
REVISION =	0

CATEGORIES =	telephony

HOMEPAGE =	http://www.voip-info.org/tiki-index.php?page=AstManProxy

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto pthread ssl

# mirrored from git repository
MASTER_SITES =	https://spacehopper.org/mirrors/

MAKE_ENV =	CFLAGS="${CFLAGS}"

MAKE_FLAGS =	CC="${CC}" SYSCONFDIR=${SYSCONFDIR} \
		LIBDIR=${WRKINST}/${PREFIX}/lib/astmanproxy \
		MODDIR=${PREFIX}/lib/astmanproxy/modules \
		MODDIR_REAL=${WRKINST}/${PREFIX}/lib/astmanproxy/modules \
		CONFDIR=${SYSCONFDIR}/astmanproxy \
		CONFDIR_REAL=${WRKINST}/${PREFIX}/share/examples/astmanproxy \
		PERMDIR=${SYSCONFDIR}/astmanproxy \
		PERMDIR_REAL=${WRKINST}/${PREFIX}/share/examples/astmanproxy

FAKE_FLAGS =	PREFIX=${PREFIX}

USE_GMAKE =	Yes
NO_TEST =	Yes
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
