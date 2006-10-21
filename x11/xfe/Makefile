COMMENT=	"MS-Explorer like file manager for X"

DISTNAME= 	xfe-0.88
CATEGORIES= 	x11	

HOMEPAGE=	http://roland65.free.fr/xfe/

MAINTAINER= 	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfe/}	

WANTLIB=	c m stdc++ png

MODULE=		devel/gettext
LIB_DEPENDS=	FOX-1.4.>=1::devel/fox

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/fox-1.4 -I${X11BASE}/include \
		-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	perl -pi -e 's,lib/foxrc,share/foxrc,g' ${WRKSRC}/Makefile.in
	perl -pi -e 's,lib/foxicons,share/foxicons,g' \
		${WRKSRC}/icons/Makefile.in \
		${WRKSRC}/Desktop.in

.include <bsd.port.mk>
