# $OpenBSD: Makefile,v 1.5 2000/12/14 13:22:59 espie Exp $

CATEGORIES=	japanese x11
NEED_VERSION=	1.330
DISTNAME=	intlfonts-1.2
PKGNAME=	ja-fonts-gnu-1.2

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=intlfonts

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

FONTDIR=${PREFIX}/lib/X11/fonts/ja

# Don't bother extracting non-japanese fonts
EXTRACT_CASES=*) tar zxf ${FULLDISTDIR}/$$archive `sed <${FILESDIR}/list -e s,^,${DISTNAME}/,`;;

CONFIGURE_STYLE=	gnu dest
NO_BUILD=		Yes

CONFIGURE_ARGS= --with-fontdir='$${DESTDIR}${FONTDIR}' \
	--enable-compress='gzip -9' --with-bdf=no

# Allow for several sets of fonts to be in the same directory
post-install:
	@cd ${FONTDIR} && mv -f fonts.alias fonts.alias-gnu

.include <bsd.port.mk>
