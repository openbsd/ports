# $OpenBSD: Makefile,v 1.8 2002/10/12 15:38:23 naddy Exp $

COMMENT=	"generic playlist manager for UNIX"

DISTNAME=	xhippo-3.2
CATEGORIES=	audio

HOMEPAGE=	http://www.gnu.org/software/xhippo/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_GNU:=xhippo/}

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAKE_FLAGS=	CFLAGS="${CFLAGS}"

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	gettext

DOCS=	ChangeLog gnu-xhippo.html screenshot.jpeg xhippo.html.gz \
	xhippo.info.gz xhippo.ps.gz xhippo.sgml xhippo.txt.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xhippo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xhippo
	${INSTALL_DATA} ${WRKSRC}/xhippo.config ${PREFIX}/share/examples/xhippo/xhippo.config-sample
	${INSTALL_DATA} ${WRKSRC}/xhippo.gtkrc ${PREFIX}/share/examples/xhippo
	cd ${WRKSRC}/doc; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xhippo 
	${INSTALL_MAN} ${WRKSRC}/doc/xhippo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
