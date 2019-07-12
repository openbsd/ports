# $OpenBSD: Makefile,v 1.33 2019/07/12 20:47:53 sthen Exp $

COMMENT=		OpenBSD ports distfile version scanner

GH_ACCOUNT=		jasperla
GH_PROJECT=		portroach
GH_TAGNAME=		2.0.11
REVISION =		1

CATEGORIES=		misc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://jasperla.github.io/portroach/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		perl

RUN_DEPENDS=		converters/p5-JSON \
			databases/p5-DBD-Pg \
			databases/p5-DBD-SQLite \
			databases/sqlports>=7.0 \
			devel/p5-Try-Tiny \
			mail/p5-MIME-Lite \
			sysutils/p5-Proc-Queue \
			www/p5-HTML-Parser \
			www/p5-URI \
			www/p5-XML-Feed \
			www/p5-LWP-Protocol-https \
			www/p5-libwww

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
	mv ${PREFIX}/share/portroach/templates/reminder.mail{,.dist}
	cd ${WRKSRC}/sql/ && umask 022 && pax -rw . \
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
