# $OpenBSD: Makefile,v 1.8 2014/09/04 18:38:04 jasper Exp $

COMMENT=		ports tree version scanner

# git clone 702b8944 taken from https://github.com/jasperla/portscout/
DISTNAME=		portscout-0.8.1.4
CATEGORIES=		misc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://www.inerd.com/software/portscout/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

MODULES=		perl

RUN_DEPENDS=		converters/p5-JSON \
			devel/p5-Try-Tiny \
			mail/p5-MIME-Lite \
			sysutils/p5-Proc-Queue \
			textproc/p5-XML-XPath \
			www/p5-HTML-Parser \
			www/p5-URI \
			www/p5-XML-Feed \
			www/p5-libwww

# database
RUN_DEPENDS +=		p5-DBD-SQLite-*|p5-DBD-Pg-*:databases/p5-DBD-SQLite

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/portscout.conf

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/portscout.pl ${PREFIX}/bin/portscout
	${INSTALL_DATA_DIR} ${PREFIX}/share/portscout/{sql,templates}/
	${INSTALL_DATA} ${WRKSRC}/templates/* \
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
