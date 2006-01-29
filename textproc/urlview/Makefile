# $OpenBSD: Makefile,v 1.12 2006/01/29 14:46:14 sturm Exp $

COMMENT=	"curses-based URL ripper"

DISTNAME=	urlview-0.9
PKGNAME=	${DISTNAME}p0
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.mutt.org/mutt/contrib/ \
		ftp://ftp.cs.hmc.edu/pub/me/ \
		ftp://ftp.cs.tu-berlin.de/pub/net/mail/mutt/ \
		ftp://ftp.ilog.fr/pub/Mirrors/mutt/contrib/ \
		ftp://ftp.etri.re.kr/pub/mail/mutt/ \
		ftp://ftp.pnm.net/pub/unix/mutt/contrib/

# GPL
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
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/urlview.c
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/urlview.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/urlview
	${INSTALL_DATA} ${WRKSRC}/sample.urlview ${WRKSRC}/url_handler.sh \
	     ${PREFIX}/share/examples/urlview

.include <bsd.port.mk>
