# $OpenBSD: Makefile,v 1.2 2010/03/21 10:32:31 ajacoutot Exp $

COMMENT=	PHP OpenID implementation

V=		1.2.1
BASE_URL=	http://source.keyboard-monkeys.org

DISTNAME=	cid-${V}
PKGNAME=	community-id-${V}

CATEGORIES=	www security

HOMEPAGE=	${BASE_URL}/projects/show/communityid

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${BASE_URL}/attachments/download/110/

# php5-gd-*-!no_x11 because we need freetype support
RUN_DEPENDS=	:php5-gd-*-!no_x11:www/php5/extensions,-gd \
		:php5-gmp-*:www/php5/extensions,-gmp \
		:php5-mysqli-*:www/php5/extensions,-mysqli

WRKDIST=	${WRKDIR}/communityid

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/communityid
SUBST_VARS=	INSTDIR BASE_URL

post-extract:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${WRKSRC}/README.OpenBSD

do-install:
	cp -Rp ${WRKBUILD} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} -type f -name \*.orig | xargs rm

.include <bsd.port.mk>
