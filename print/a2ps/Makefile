# $OpenBSD: Makefile,v 1.22 2000/06/11 01:13:42 weingart Exp $

DISTNAME=	a2ps-4.13b
WRKDIST=	${WRKDIR}/a2ps-4.13
CATEGORIES=	print
NEED_VERSION=	1.230
FAKE=Yes

MAINTAINER=	weingart@OpenBSD.org

# License info.  There is some questionable Sun and
# Adobe Copyrighted things in this source tree.  It
# looks fine for FTP, but likely not for the CDROM.
PERMIT_PACKAGE_CDROM=	"No fee redistribution."
PERMIT_DISTFILES_CDROM=	"No fee redistribution."
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.enst.fr/pub/unix/a2ps/

CONFIGURE_STYLE=	gnu

FLAVORS=	a4 letter letterdj
FLAVOR?=	letter

.if defined(FLAVOR)
.if ${FLAVOR} == "a4"
PAPERSIZE=	A4
.elif ${FLAVOR} == "letterdj"
PAPERSIZE=	Letterdj
.elif ${FLAVOR} == "letter"
PAPERSIZE=	Letter
.endif
.endif

CONFIGURE_ARGS+=	--with-medium=$(PAPERSIZE) \
			${CONFIGURE_SHARED}

pre-build:
	/usr/bin/touch $(WRKSRC)/doc/*.info
	/usr/bin/touch $(WRKSRC)/doc/*.dvi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/a2ps/etc
	${INSTALL_DATA} ${WRKSRC}/etc/a2ps.cfg ${PREFIX}/share/a2ps/etc
	${INSTALL_DATA} ${WRKSRC}/etc/a2ps-site.cfg ${PREFIX}/share/a2ps/etc

.include <bsd.port.mk>
