# $OpenBSD: Makefile,v 1.1.1.1 2000/04/24 18:25:23 espie Exp $

CATEGORIES=	japanese x11
DIST_SUBDIR=	ja-fonts

DISTNAME=		ja-fonts-funet

MASTER_SITES=	ftp://ftp.funet.fi/pub/culture/japan/fonts/bdf/

FONTS=	13x26.bdf.Z 13x26rk.bdf.Z 7x14maru.bdf.Z 7x14rkmaru.bdf.Z \
	a16.bdf.Z a16rk.bdf.Z a18.bdf.Z a18rk.bdf.Z \
	kanji16.bdf.Z kanji18.bdf.Z kanji24.bdf.Z kanji26.bdf.Z \
	maru14.bdf.Z maru16.bdf.Z maru18.bdf.Z

ALIASES=7x14maru.alias a16.alias a18.alias \
	kanji16.alias kanji18.alias kanji24.alias kanji26.alias \
	maru14.alias maru16.alias maru18.alias 
OTHER=Imakefile

DISTFILES=${FONTS} ${ALIASES} ${OTHER}

EXTRACT_ONLY=

MAINTAINER=	espie@cvs.openbsd.org

PERMIT_DISTFILES_CDROM=	No fee
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No fee
PERMIT_PACKAGE_FTP=	Yes

USE_IMAKE=		Yes
FAKE=			Yes

FONTDIR=${PREFIX}/lib/X11/fonts/ja

post-extract:
	@mkdir -p ${WRKDIST}
	@for i in $(FONTS); do \
		uncompress -c $(FULLDISTDIR)/$$i >${WRKDIST}/`basename $$i .Z`; \
	done
	@for i in ${ALIASES} ${OTHER}; do cp $(FULLDISTDIR)/$$i ${WRKDIST}; done


post-install:
	@cd ${FONTDIR} && mv fonts.alias fonts.alias-funet


.include <bsd.port.mk>
