# $OpenBSD: Makefile,v 1.3 2015/11/12 16:41:04 sthen Exp $

COMMENT=	tools for use with PC/SC drivers, cards, readers

DISTNAME=	pcsc-tools-1.4.25

CATEGORIES=	security sysutils

HOMEPAGE=	http://ludovic.rousseau.free.fr/softwares/pcsc-tools/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcsclite pthread

MASTER_SITES=	http://ludovic.rousseau.free.fr/softwares/pcsc-tools/

# gscriptor requires p5-Gtk2, intentionally not listed as a hard dep
RUN_DEPENDS=	security/p5-Chipcard-PCSC

LIB_DEPENDS=	security/pcsc-lite

FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}

USE_GMAKE=	Yes

NO_TEST=	Yes

CFLAGS+=	-I${LOCALBASE}/include/PCSC

.include <bsd.port.mk>
