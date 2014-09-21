# $OpenBSD: Makefile,v 1.16 2014/09/21 08:58:45 espie Exp $

COMMENT=	generates simple manual pages from program output

DISTNAME=	help2man-1.41.1
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=help2man/}

HOMEPAGE=	https://www.gnu.org/software/help2man/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls

# XXX
# this ships with a monster GNUmakefile that doesn't do *anything useful*
# when --disable-nls is active, so build manually.
# help2man builds early -> autoconf builds early, before the infamous
# "gperf/libconv/gettext/gmake hell"

do-build:
	cd ${WRKBUILD} && perl ${WRKSRC}/help2man.PL

do-install:
	${INSTALL_SCRIPT} ${WRKBUILD}/help2man ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/help2man.info ${PREFIX}/info
	${INSTALL_MAN} ${WRKSRC}/help2man.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
