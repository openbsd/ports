# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:12 sthen Exp $

COMMENT=	extra japanese fonts

CATEGORIES=	fonts japanese x11
V= 		1.2.1
DISTNAME=	intlfonts-$V
PKGNAME=	ja-fonts-gnu-$V
USE_X11 =	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=intlfonts/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE=	Yes

FONTDIR=${PREFIX}/share/fonts/ja

# Don't bother extracting non-japanese fonts
EXTRACT_CASES=*) tar zxf ${FULLDISTDIR}/$$archive `sed <${FILESDIR}/list -e s,^,${DISTNAME}/,`;;

# bdftopcf

CONFIGURE_STYLE=	gnu dest
NO_BUILD=		Yes
NO_TEST=		Yes

CONFIGURE_ARGS= --with-fontdir='$${DESTDIR}${FONTDIR}' \
	--enable-compress='gzip -9' --with-bdf=no

# Allow for several sets of fonts to be in the same directory
post-install:
	@cd ${FONTDIR} && mv -f fonts.alias fonts.alias-gnu

.include <bsd.port.mk>
