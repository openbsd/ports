# $OpenBSD: Makefile,v 1.1.1.1 2000/04/24 16:10:21 espie Exp $

CATEGORIES=	japanese x11
DISTNAME=	intlfonts-1.2
PKGNAME=	ja-fonts-gnu-1.2
FAKE=		Yes

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=intlfonts

MAINTAINER=	espie@cvs.openbsd.org

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

FONTDIR=${PREFIX}/lib/X11/fonts/ja

# Don't bother extracting non-japanese fonts
EXTRACT_AFTER_ARGS=	| tar -xf - `sed <${FILESDIR}/list -e s,^,${DISTNAME}/,`
GNU_CONFIGURE=	Yes

NO_BUILD=	Yes

CONFIGURE_ARGS= --with-fontdir='$${DESTDIR}${FONTDIR}' \
	--enable-compress='gzip -9' --with-bdf=no

# Allow for several sets of fonts to be in the same directory
post-install:
	@cd ${FONTDIR} && mv -f fonts.alias fonts.alias-gnu

.include <bsd.port.mk>
