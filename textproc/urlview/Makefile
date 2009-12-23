# $OpenBSD: Makefile,v 1.14 2009/12/23 22:04:18 jasper Exp $

COMMENT=	curses-based URL ripper

DISTNAME=	urlview-0.9
PKGNAME=	${DISTNAME}p1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/contrib/ \
		ftp://ftp.mutt.org/mutt/contrib/ \
		ftp://ftp.gbnet.net/pub/mutt-international/contrib/ \
		ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/contrib/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses 

CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

FLAVORS=	slang
FLAVOR?=

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS=	slang.14::devel/libslang
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV=	LIBS=-lcurses
.endif

pre-build:
	${SUBST_CMD} ${WRKSRC}/urlview.c
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/urlview.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/urlview
	${INSTALL_DATA} ${WRKSRC}/sample.urlview ${WRKSRC}/url_handler.sh \
	     ${PREFIX}/share/examples/urlview

.include <bsd.port.mk>
