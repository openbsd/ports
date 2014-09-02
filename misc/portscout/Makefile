# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 12:31:47 jasper Exp $

COMMENT=		ports tree version scanner

# git clone c17d10110f taken from https://github.com/jasperla/portscout/
DISTNAME=		portscout-0.8.1.1
CATEGORIES=		misc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://www.inerd.com/software/portscout/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

MODULES=		perl

RUN_DEPENDS=		devel/p5-Try-Tiny \
			mail/p5-MIME-Lite \
			sysutils/p5-Proc-Queue \
			textproc/p5-XML-XPath \
			www/p5-URI \
			www/p5-libwww

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/portscout.conf

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/portscout.pl ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/portscout/{sql,templates}/
	${INSTALL_DATA} ${WRKSRC}/templates/*.html \
		${PREFIX}/share/portscout/templates/
	${INSTALL_DATA} ${WRKSRC}/sql/* \
		${PREFIX}/share/portscout/sql/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/portscout/
	${INSTALL_DATA} ${WRKSRC}/portscout.conf \
		${PREFIX}/share/examples/portscout/
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Portscout/
	cd ${WRKSRC}/Portscout/ && umask 022 && pax -rw . \
		${PREFIX}/${P5SITE}/Portscout/
	${INSTALL_DATA} ${WRKSRC}/Portscout.pm ${PREFIX}/${P5SITE}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/portscout/
.for f in README UPDATING docs/portscout-portconfig.txt
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/portscout/
.endfor
	/usr/bin/pod2man ${WRKSRC}/portscout.pod > ${PREFIX}/man/man1/portscout.1

.include <bsd.port.mk>
