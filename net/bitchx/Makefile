# $OpenBSD: Makefile,v 1.15 2000/02/17 07:25:19 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

DISTNAME=	BitchX-1.0c16
.if defined(USE_SOCKS5) && ${USE_SOCKS5:U} == YES
PKGNAME=	bitchx-1.0c16-socks5
.else
PKGNAME=	bitchx-1.0c16
.endif
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/ \
		ftp://bitchx.dimension6.com/pub/BitchX/source/

NEED_VERSION=	1.191

.if defined(USE_SOCKS5) && ${USE_SOCKS5:U} == YES
BUILD_DEPENDS=	${LOCALBASE}/lib/libsocks5.a:${PORTSDIR}/security/socks5
.endif

MAINTAINER=	brad@openbsd.org

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes

.if defined(USE_SOCKS5) && ${USE_SOCKS5:U} == YES
CONFIGURE_ARGS=	--with-socks5="${LOCALBASE}"
.endif

MAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

WRKDIST=	${WRKDIR}/BitchX

post-install:
	@find ${PREFIX}/share/bitchx/help -name 'CVS' -print | xargs rm -rf
	@chown -R root.wheel ${PREFIX}/share/bitchx

.include <bsd.port.mk>
