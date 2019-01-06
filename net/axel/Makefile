# $OpenBSD: Makefile,v 1.11 2019/01/06 14:50:49 danj Exp $

COMMENT=	tiny download accelerator
DISTNAME=	axel-2.4
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	https://github.com/axel-download-accelerator/axel

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://alioth-archive.debian.org/releases/pcsclite/ccid/

WANTLIB=	c iconv intl pthread

LIB_DEPENDS=	devel/gettext

BUILD_DEPENDS=	devel/gettext-tools

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
