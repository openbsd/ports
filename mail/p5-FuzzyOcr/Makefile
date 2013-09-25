# $OpenBSD: Makefile,v 1.11 2013/09/25 07:58:43 sthen Exp $

COMMENT=		detect image spam with SpamAssassin

V=			3.6.0.146
DISTNAME=		fuzzyocr-$V
PKGNAME=		p5-FuzzyOcr-$V
REVISION=		1
PKG_ARCH=		*
CATEGORIES=		mail perl5

HOMEPAGE=		http://fuzzyocr.own-hero.net/
MASTER_SITES=		http://bigio.snb.it/openbsd/distfiles/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

RUN_DEPENDS=		devel/p5-MLDBM-Sync \
			graphics/gocr \
			graphics/giflib \
			graphics/netpbm \
			graphics/ocrad \
			graphics/ImageMagick \
			graphics/gifsicle \
			graphics/tesseract \
			mail/p5-Mail-SpamAssassin \
			textproc/p5-String-Approx

NO_TEST=		Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
MODULES=		perl

WRKDIST=		${WRKDIR}/FuzzyOcr-$V
CONFDIR=		${SYSCONFDIR}/mail/spamassassin
SUBST_VARS=		CONFDIR

CONF=			FuzzyOcr.cf FuzzyOcr.mysql FuzzyOcr.preps \
			FuzzyOcr.scansets FuzzyOcr.words

do-install:
	${INSTALL_DATA} ${WRKSRC}/FuzzyOcr.pm ${PREFIX}/${P5SITE}
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/FuzzyOcr
	${INSTALL_DATA} ${WRKSRC}/FuzzyOcr/*.pm ${PREFIX}/${P5SITE}/FuzzyOcr
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/FuzzyOcr
.for i in ${CONF}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/examples/FuzzyOcr
.endfor

.include <bsd.port.mk>
