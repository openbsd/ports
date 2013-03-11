# $OpenBSD: Makefile,v 1.28 2013/03/11 11:44:47 espie Exp $

COMMENT=	Alternative PHP Cache

DISTNAME=	APC-3.1.9
PKGNAME=	pecl-${DISTNAME}
REVISION=	3

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM=	Yes

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
