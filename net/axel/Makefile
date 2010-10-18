# $OpenBSD: Makefile,v 1.3 2010/10/18 18:36:45 espie Exp $

COMMENT=	tiny download accelerator
DISTNAME=	axel-1.1
CATEGORIES=	net

HOMEPAGE=	http://axel.alioth.debian.org/

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://alioth.debian.org/frs/download.php/2287/

WANTLIB=	c pthread

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_GROFF =	Yes
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
