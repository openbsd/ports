# $OpenBSD: Makefile,v 1.1.1.1 2011/12/07 09:27:16 jasper Exp $

COMMENT =		monospace bitmap font, primarily aimed at programmers

V =			2.89
PKGNAME =		dina-fonts-$V
DISTNAME =		dina-pcf-$V
CATEGORIES =		fonts

HOMEPAGE =		http://www.donationcoder.com/Software/Jibz/Dina/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# FREE (c) Jorgen Ibsen (Though no license included in distribution)
PERMIT_PACKAGE_CDROM =		No
PERMIT_PACKAGE_FTP =		No
PERMIT_DISTFILES_CDROM =	No
PERMIT_DISTFILES_FTP =		No

MASTER_SITES =		http://ftp.fi.debian.org/gentoo/distfiles/

NO_BUILD =		Yes
NO_REGRESS =		Yes

FONTDIR=	${PREFIX}/lib/X11/fonts/dina

WRKSRC =	${WRKDIR}/Dina-PCF

do-install:
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${FONTDIR}/fonts.alias-dina

.include <bsd.port.mk>
