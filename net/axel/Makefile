# $OpenBSD: Makefile,v 1.1.1.1 2008/04/01 12:52:00 ajacoutot Exp $

COMMENT=	tiny download accelerator
DISTNAME=	axel-1.0b
CATEGORIES=	net

HOMEPAGE=	http://wilmer.gaast.net/main.php/axel.html

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://wilmer.gaast.net/downloads/

WANTLIB=	c pthread

MODULES=	devel/gettext

USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--etcdir=${SYSCONFDIR} \
		--mandir=${PREFIX}/man \
		--i18n=1

MAKE_FLAGS=	CC=${CC} \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LFLAGS="-L${LOCALBASE}/lib -pthread -lintl -liconv"
FAKE_FLAGS=	ETCDIR=${PREFIX}/share/examples/axel

pre-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/axel.1

.include <bsd.port.mk>
