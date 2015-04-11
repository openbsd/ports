# $OpenBSD: Makefile,v 1.18 2015/04/11 08:25:10 ajacoutot Exp $

NOT_FOR_ARCHS =		sparc m88k vax

COMMENT =		PCI bus configuration register access tools

DISTNAME =		pciutils-3.3.1
CATEGORIES =		sysutils

HOMEPAGE =		http://atrey.karlin.mff.cuni.cz/~mj/pciutils.shtml

MAINTAINER =		Matthieu Herrb <matthieu@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c z

MASTER_SITES =		ftp://atrey.karlin.mff.cuni.cz/pub/linux/pci/ \
			ftp://ftp.kernel.org/pub/software/utils/pciutils/ \
			ftp://metalab.unc.edu/pub/Linux/hardware/

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" OPT="${CFLAGS}"
FAKE_FLAGS =		PREFIX=${TRUEPREFIX} MANDIR=${TRUEPREFIX}/man

NO_TEST =		Yes

INSTALL_TARGET =	install install-lib

post-install:
	rm ${PREFIX}/man/man7/pcilib.7

.include <bsd.port.mk>
