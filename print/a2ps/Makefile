# $OpenBSD: Makefile,v 1.32 2005/12/23 20:22:30 mbalmer Exp $

COMMENT=	"format ascii files for printing on PostScript printers"

DISTNAME=	a2ps-4.13b
PKGNAME=	${DISTNAME}p0
WRKDIST=	${WRKDIR}/a2ps-4.13
CATEGORIES=	print
SHARED_LIBS=	a2ps	2.0

# License info.  There is some questionable Sun and
# Adobe Copyrighted things in this source tree.  It
# looks fine for FTP, but likely not for the CDROM.
PERMIT_PACKAGE_CDROM=	"No fee redistribution."
PERMIT_DISTFILES_CDROM=	"No fee redistribution."
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	ftp://ftp.enst.fr/pub/unix/a2ps/

MODULES=	devel/gettext

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/auxdir

FLAVORS=	a4 letter letterdj
FLAVOR?=	letter

.if defined(FLAVOR)
.if ${FLAVOR:L} == "a4"
PAPERSIZE=	A4
.elif ${FLAVOR:L} == "letterdj"
PAPERSIZE=	Letterdj
.elif ${FLAVOR:L} == "letter"
PAPERSIZE=	Letter
.endif
.endif

CONFIGURE_ARGS=	--with-medium=${PAPERSIZE} \
		${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	/usr/bin/touch $(WRKSRC)/doc/*.info
	/usr/bin/touch $(WRKSRC)/doc/*.dvi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/a2ps/etc
	${INSTALL_DATA} ${WRKSRC}/etc/a2ps.cfg ${PREFIX}/share/a2ps/etc
	${INSTALL_DATA} ${WRKSRC}/etc/a2ps-site.cfg ${PREFIX}/share/a2ps/etc

.include <bsd.port.mk>
