# $OpenBSD: Makefile,v 1.14 2001/06/29 14:31:02 brad Exp $

COMMENT=	"mirror packages on remote sites"

DISTNAME=	mirror-2.9
CATEGORIES=	net
NEED_VERSION=	1.413
MASTER_SITES=	ftp://src.doc.ic.ac.uk/computing/archiving/mirror/ \
		ftp://ftp.nmt.edu/ \
		ftp://ftp.plig.net/pub/OpenBSD/distfiles/

HOMEPAGE=	http://sunsite.org.uk/packages/mirror/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile

WRKDIST=	${WRKDIR}

DOCDIR=		${PREFIX}/share/doc/mirror
DOCS=		copyright.html index.html mirror-faq.html mirror.html \
		mm.html quickstart.html mirror-on-dusk.gif Lake.class

do-configure:
	@-rm -f ${WRKSRC}/mirror.man
	@sed -e 's,@DOCDIR@,${DOCDIR},g' < ${FILESDIR}/mirror.man \
		>${WRKSRC}/mirror.man
	@sed -e 's,@PREFIX@,${PREFIX},g' < ${WRKSRC}/mirror.pl \
		> ${WRKSRC}/mirror
	@sed -e 's,@PREFIX@,${PREFIX},g' < ${WRKSRC}/mm.pl \
		> ${WRKSRC}/mirrormaster

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mirror

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	@cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCDIR}

.include <bsd.port.mk>
