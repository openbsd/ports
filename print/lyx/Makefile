# $OpenBSD: Makefile,v 1.30 2003/01/06 00:13:22 margarida Exp $

COMMENT=	"graphical frontend for LaTeX (nearly WYSIWYG)"

DISTNAME=	lyx-1.2.2
CATEGORIES=	print

HOMEPAGE=	http://www.lyx.org/

MASTER_SITES=	ftp://ftp.lyx.org/pub/lyx/stable/ \
		ftp://ftp.sdsc.edu/pub/other/lyx/stable/ \
		ftp://ftp.lip6.fr/pub/lyx/stable/ \
		ftp://ftp.chg.ru/pub/TeX/lyx/stable/

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# quasi-GPL (linked to closed source library)
# no limitation of license; considered GPL
# see http://www.lyx.org/about/license.php3 for additional info
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS+=		:teTeX_base-*:print/teTeX/base
RUN_DEPENDS+=		:teTeX_base-*:print/teTeX/base \
			:ispell-*:textproc/ispell
LIB_DEPENDS+=		forms.1::x11/xforms

CONFIGURE_STYLE=		gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

CONFIGURE_ARGS=		--with-extra-lib=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-inc="${LOCALBASE}/include \
			${LOCALBASE}/include/X11"

post-install:
	@strip ${PREFIX}/bin/lyx

.include <bsd.port.mk>
