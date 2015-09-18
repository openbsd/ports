# $OpenBSD: Makefile,v 1.8 2015/09/18 19:35:05 jasper Exp $

COMMENT=	tiny download accelerator
DISTNAME=	axel-2.4
CATEGORIES=	net

HOMEPAGE=	http://axel.alioth.debian.org/

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://alioth.debian.org/frs/download.php/3015/

WANTLIB=	c pthread

MODULES=	devel/gettext

USE_GMAKE=	Yes
NO_TEST=	Yes

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
	@sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/axel.1

.include <bsd.port.mk>
