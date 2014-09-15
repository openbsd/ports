# $OpenBSD: Makefile,v 1.5 2014/09/15 08:21:39 jasper Exp $

COMMENT=		OpenBSD ports tree version scanner

GH_ACCOUNT=		jasperla
GH_PROJECT=		portroach
GH_TAGNAME=		1.1.1
GH_COMMIT=		9b7d9046d37e348a39faee767e5d8f3f6c816143
REVISION=		0

DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES=		misc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://jasperla.github.io/portroach/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

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
	${SUBST_CMD} ${WRKSRC}/portroach.conf.dist

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/portroach.pl ${PREFIX}/bin/portroach
	${INSTALL_DATA_DIR} ${PREFIX}/share/portroach/{sql,templates}/
	cd ${WRKSRC}/templates/ && umask 022 && pax -rw . \
		${PREFIX}/share/portroach/templates/
	${INSTALL_DATA} ${WRKSRC}/sql/* \
		${PREFIX}/share/portroach/sql/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/portroach/
	${INSTALL_DATA} ${WRKSRC}/portroach.conf.dist \
		${PREFIX}/share/examples/portroach/
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Portroach/
	cd ${WRKSRC}/Portroach/ && umask 022 && pax -rw . \
		${PREFIX}/${P5SITE}/Portroach/
	${INSTALL_DATA} ${WRKSRC}/Portroach.pm ${PREFIX}/${P5SITE}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/portroach/
.for f in README.md docs/portroach-portconfig.txt
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/portroach/
.endfor
	/usr/bin/pod2man ${WRKSRC}/portroach.pod > ${PREFIX}/man/man1/portroach.1

.include <bsd.port.mk>
