# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:14 sthen Exp $

COMMENT=	converts Japanese fonts in PostScript documents

CATEGORIES=japanese print fonts

DISTNAME=kanjips
PKGNAME=${DISTNAME}-19900310

MASTER_SITES=ftp://ftp.funet.fi/pub/culture/japan/unix/
MASTER_SITES0=ftp://ftp.funet.fi/pub/culture/japan/fonts/

DISTFILES=kanjips.tar.Z jis32.Z:0 jis48.Z:0
# Freeware
EXTRACT_ONLY=kanjips.tar.Z

PERMIT_PACKAGE=	Yes

WANTLIB=		c m

MAINTAINER=		Marc Espie <espie@openbsd.org>

MAKE_FLAGS=	CFLAGS='${CFLAGS} -I..'
ALL_TARGET=	kanjips
WRKSRC=	${WRKDIST}/kanjips

post-extract:
	zcat ${FULLDISTDIR}/jis32.Z >${WRKDIST}/jis32
	zcat ${FULLDISTDIR}/jis48.Z >${WRKDIST}/jis48

do-configure:
	cd ${WRKDIST} && awk '{print $$1}' < MANIFEST |grep '\.SH' >todo
	cd ${WRKDIST} && perl -pi.bak ${FILESDIR}/add-quotes `cat todo`
	cp ${FILESDIR}/config.sh ${WRKDIST}
	cd ${WRKDIST}; PATH=.:$$PATH; for i in `cat todo`; do /bin/sh $$i; done
	cd ${WRKDIST} && perl -pi.bak ${FILESDIR}/remove-quotes \
		`sed <todo -e 's,.SH,,'`

NO_TEST=	Yes

FONTDIR=${PREFIX}/share/kanjips_font
DOCDIR=${PREFIX}/share/doc/kanjips

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kanjips ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/jis24 ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/jis32 ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/jis48 ${FONTDIR}
	${INSTALL_SCRIPT} ${WRKDIST}/jenscript/jenscript ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/mp/mp ${PREFIX}/bin/mp-j
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}/kanjips.readme
	${INSTALL_DATA} ${WRKDIST}/jenscript/README ${DOCDIR}/jenscript.readme
	${INSTALL_SCRIPT} ${WRKDIST}/mp/README ${DOCDIR}/mp-j.readme
	${INSTALL_MAN} ${FILESDIR}/jenscript.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/kanjips.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
