# $OpenBSD: Makefile,v 1.2 2010/07/21 05:53:07 merdely Exp $

COMMENT=		detect image spam with SpamAssassin

V=			3.6.0
DISTNAME=		fuzzyocr-$V
PKGNAME=		p5-FuzzyOcr-$V
CATEGORIES=		mail perl5

HOMEPAGE=		http://fuzzyocr.own-hero.net/
MASTER_SITES=		http://users.own-hero.net/~decoder/fuzzyocr/

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

RUN_DEPENDS=		::devel/p5-MLDBM-Sync \
			::graphics/gocr \
			::graphics/libungif \
			::graphics/netpbm \
			::graphics/ocrad \
			::graphics/ImageMagick \
			::graphics/gifsicle,no_x11 \
			::graphics/tesseract \
			::mail/p5-Mail-SpamAssassin \
			::textproc/p5-String-Approx

REGRESS_DEPENDS=	::mail/p5-FuzzyOcr

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
MODULES=		perl

WRKDIST=		${WRKDIR}/FuzzyOcr-$V
CONFDIR=		${SYSCONFDIR}/mail/spamassassin
SUBST_VARS=		CONFDIR
PKG_ARCH=		*

CONF=			FuzzyOcr.cf FuzzyOcr.mysql FuzzyOcr.preps \
			FuzzyOcr.scansets FuzzyOcr.words

SAMPLES=		ocr-gif.eml ocr-multi.eml ocr-png.eml \
			ocr-animated.eml ocr-jpg.eml ocr-obfuscated.eml \
			ocr-wrongext.eml

do-install:
	${INSTALL_DATA} ${WRKSRC}/FuzzyOcr.pm ${PREFIX}/${P5SITE}
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/FuzzyOcr
	${INSTALL_DATA} ${WRKSRC}/FuzzyOcr/*.pm ${PREFIX}/${P5SITE}/FuzzyOcr
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/FuzzyOcr
.for i in ${CONF}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/examples/FuzzyOcr
.endfor

do-regress:
.for i in ${SAMPLES}
	spamassassin -xLt --cf="focr_autodisable_score 100" < \
		${WRKSRC}/samples/${i}
.endfor

.include <bsd.port.mk>
