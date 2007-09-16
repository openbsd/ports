# $OpenBSD: Makefile,v 1.10 2007/09/16 00:33:57 merdely Exp $

COMMENT=	extra japanese fonts

CATEGORIES=	japanese x11
DISTNAME=	intlfonts-1.2
PKGNAME=	ja-fonts-gnu-1.2

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
USE_X11=		Yes

CONFIGURE_STYLE=	gnu dest
NO_BUILD=		Yes
NO_REGRESS=		Yes

CONFIGURE_ARGS= --with-fontdir='$${DESTDIR}${FONTDIR}' \
	--enable-compress='gzip -9' --with-bdf=no

# Allow for several sets of fonts to be in the same directory
post-install:
	@cd ${FONTDIR} && mv -f fonts.alias fonts.alias-gnu

.include <bsd.port.mk>
