# $OpenBSD: Makefile,v 1.12 2004/12/22 11:48:33 alek Exp $

COMMENT=		"finds and then operates on files"

DISTNAME=		findutils-4.1
CATEGORIES=		misc

HOMEPAGE=		http://www.gnu.org/software/findutils/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=findutils/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu dest old
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=		localstatedir=/var/db
FAKE_FLAGS=		DESTDIR=${WRKINST} \
			MAKEINFO="makeinfo --no-split"

# regenerate in one piece
post-extract:
	@rm -f ${WRKSRC}/doc/find.info*

.include <bsd.port.mk>
