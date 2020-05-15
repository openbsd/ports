# $OpenBSD: Makefile,v 1.26 2020/05/15 13:01:32 jsg Exp $

NOT_FOR_ARCHS =		m88k

COMMENT =		PCI bus configuration register access tools

DISTNAME =		pciutils-3.6.4
CATEGORIES =		sysutils

HOMEPAGE =		https://mj.ucw.cz/sw/pciutils/

MAINTAINER =		Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB =		c z

MASTER_SITES =		https://www.kernel.org/pub/software/utils/pciutils/ \
			https://mj.ucw.cz/download/linux/pci/

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" OPT="${CFLAGS}"
FAKE_FLAGS =		PREFIX=${TRUEPREFIX} MANDIR=${TRUEPREFIX}/man

NO_TEST =		Yes

INSTALL_TARGET =	install install-lib

post-install:
	rm ${PREFIX}/man/man7/pcilib.7

.include <bsd.port.mk>
