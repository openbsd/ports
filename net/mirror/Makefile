# $OpenBSD: Makefile,v 1.10 2000/03/28 10:00:17 espie Exp $

DISTNAME=	mirror-2.9
CATEGORIES=	net
NEED_VERSION=	1.210
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/

MAINTAINER=	ports@openbsd.org
HOMEPAGE=	http://sunsite.org.uk/packages/mirror/


PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile
FAKE=		Yes

do-configure:
	@-rm -f ${WRKSRC}/mirror.man
	@sed -e 's,@DOCDIR@,${DOCDIR},' <${FILESDIR}/mirror.man >${WRKSRC}/mirror.man

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mirror

DOCDIR=${PREFIX}/share/doc/mirror
DOCS= copyright.html \
index.html \
mirror-faq.html \
mirror.html \
mm.html \
quickstart.html \
mirror-on-dusk.gif \
Lake.class

post-install:
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
