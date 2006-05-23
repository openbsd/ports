# $OpenBSD: Makefile,v 1.3 2006/05/23 19:54:03 sturm Exp $

COMMENT=	"proxy that can transliterate japanese"

DISTNAME=	japana-2.0.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www japanese converters
HOMEPAGE=	http://www.h.shuttle.de/mitch/japana.en.html

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=	http://www.h.shuttle.de/mitch/stuff/
RUN_DEPENDS=	:p5-Text-Kakasi-*:japanese/p5-Text-Kakasi \
		:p5-AppConfig-*:devel/p5-AppConfig \
		:p5-libwww-*:www/p5-libwww

NO_REGRESS=	Yes

do-build:
	cd ${WRKSRC} && pod2man japana|nroff -man >japana.cat1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/japana/
	${INSTALL_DATA} ${WRKDIST}/default.conf \
	    ${PREFIX}/share/examples/japana/japana.conf
	${INSTALL_MAN} ${WRKBUILD}/japana.cat1 ${PREFIX}/man/cat1/japana.0
	${INSTALL_PROGRAM} ${WRKDIST}/japana ${PREFIX}/sbin/japana

.include <bsd.port.mk>
