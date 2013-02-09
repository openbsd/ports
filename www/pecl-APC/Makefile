# $OpenBSD: Makefile,v 1.27 2013/02/09 14:49:53 sthen Exp $

COMMENT=	Alternative PHP Cache

DISTNAME=	APC-3.1.9
PKGNAME=	pecl-${DISTNAME}
REVISION=	3

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS=	--enable-apc

FLAVORS=	shm
FLAVOR?=

.if ${FLAVOR:Mshm}
CONFIGURE_ARGS+=	--disable-apc-mmap
.endif

WEBROOT=	/var/www
SUBST_VARS=	WEBROOT

post-configure:
	@perl -pi -e "s,-rpath \\$$\\(phplibdir\\),-rpath ${LOCALBASE}/lib,g" \
		${WRKSRC}/Makefile

pre-install:
	@${INSTALL_DATA_DIR} ${WRKINST}/${WEBROOT}/pecl-APC
	@${INSTALL_DATA} ${WRKSRC}/apc.php ${WRKSRC}/INSTALL \
		${WRKINST}/${WEBROOT}/pecl-APC

.include <bsd.port.mk>
