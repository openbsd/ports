# $OpenBSD: Makefile,v 1.2 2011/05/14 20:16:11 jasper Exp $

COMMENT =	convert DocBook to man pages and Texinfo

DISTNAME =	docbook2X-0.8.8
PKGNAME =	${DISTNAME:L}
REVISION =	0

CATEGORIES =	textproc

HOMEPAGE =	http://docbook2x.sourceforge.net/

# MIT-like
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MASTER_SITES = ${MASTER_SITE_SOURCEFORGE:=docbook2x/}

MODULES +=		converters/libiconv
RUN_DEPENDS =		textproc/libxml \
			textproc/libxslt \
			textproc/p5-XML-SAX
BUILD_DEPENDS =		${RUN_DEPENDS}

SEPARATE_BUILD =	simple
USE_GMAKE =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--datadir=${PREFIX}/share

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/docbook2X.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
