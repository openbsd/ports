# $OpenBSD: Makefile,v 1.26 2002/06/09 04:08:19 wilfried Exp $

COMMENT=	"graphical frontend for LaTeX (nearly WYSIWYG)"

DISTNAME=	lyx-1.1.6fix4
CATEGORIES=	print
NEED_VERSION=	1.489
MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/ \
		ftp://ftp.sdsc.edu/pub/other/lyx/stable/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/

HOMEPAGE=	http://www.lyx.org/

MODULES=	gettext

MAINTAINER=	Mark Grimes <mark@openbsd.org>

# quasi-GPL (linked to closed source library)
# no limitation of license; considered GPL
# see http://www.lyx.org/about/license.php3 for additional info
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:teTeX_base-*:print/teTeX/base
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:ispell-*:textproc/ispell
LIB_DEPENDS=	forms::x11/xforms \
		intl.1::devel/gettext

CONFIGURE_STYLE=		autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config
STRIP=
CONFIGURE_ARGS=		--with-extra-lib=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-inc="${LOCALBASE}/include \
			${LOCALBASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
