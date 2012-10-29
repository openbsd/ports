# $OpenBSD: Makefile,v 1.2 2012/10/29 15:19:03 espie Exp $

COMMENT=	extra japanese fonts

CATEGORIES=	fonts japanese x11
DISTNAME=	intlfonts-1.2
REVISION=	0
PKGNAME=	ja-fonts-gnu-1.2
USE_X11 =	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=intlfonts/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

FONTDIR=${PREFIX}/lib/X11/fonts/ja

# Don't bother extracting non-japanese fonts
EXTRACT_CASES=*) tar zxf ${FULLDISTDIR}/$$archive `sed <${FILESDIR}/list -e s,^,${DISTNAME}/,`;;

# bdftopcf

CONFIGURE_STYLE=	gnu dest
NO_BUILD=		Yes
NO_REGRESS=		Yes

CONFIGURE_ARGS= --with-fontdir='$${DESTDIR}${FONTDIR}' \
	--enable-compress='gzip -9' --with-bdf=no

# Allow for several sets of fonts to be in the same directory
post-install:
	@cd ${FONTDIR} && mv -f fonts.alias fonts.alias-gnu

.include <bsd.port.mk>
