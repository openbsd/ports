# $OpenBSD: Makefile,v 1.23 2000/07/04 19:33:07 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

DISTNAME=	BitchX-1.0c16
.if defined(USE_SOCKS5) && ${USE_SOCKS5:U} == YES
PKGNAME=	bitchx-1.0c16-socks5
.else
PKGNAME=	bitchx-1.0c16
.endif
CATEGORIES=	net
NEED_VERSION=	1.302
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/ \
		ftp://ftp.bitchx.org/pub/BitchX/source/ \
		ftp://bitchx.dimension6.com/pub/BitchX/source/
MASTER_SITES0=	ftp://ftp.bitchx.org/pub/BitchX/source/

PATCHFILES=	1.0c16-format.patch
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKSRC}/source -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKSRC}/source --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

.if defined(USE_SOCKS5) && ${USE_SOCKS5:U} == YES
BUILD_DEPENDS=	${LOCALBASE}/lib/libsocks5.a::security/socks5
.endif

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest

.if defined(USE_SOCKS5) && ${USE_SOCKS5:U} == YES
CONFIGURE_ARGS+= --with-socks5="${LOCALBASE}"
.endif

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

WRKDIST=	${WRKDIR}/BitchX

post-install:
	@cd ${PREFIX}/bin && ln -sf BitchX-1.0c16 BitchX
	@find ${PREFIX}/share/bitchx/help -name 'CVS' -print | xargs rm -rf
	@chown -R root.wheel ${PREFIX}/share/bitchx

.include <bsd.port.mk>
