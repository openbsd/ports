# $OpenBSD: Makefile,v 1.8 2002/08/10 11:41:27 nino Exp $

COMMENT=		"Scrollkeeper Open Documentation Cataloging System"

DISTNAME=		scrollkeeper-0.2
CATEGORIES=		textproc

HOMEPAGE=		http://scrollkeeper.sourceforge.net
MAINTAINER=		Nils Nordman <nino@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/scrollkeeper/}

MODULES=		gettext
LIB_DEPENDS=		xml.9::textproc/libxml1

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--localstatedir=/var
CONFIGURE_ENV=   	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@find ${WRKSRC}/cl/templates -name Makefile.in | xargs \
	perl -pi -e 's|data_link_dir = \$$\(datadir\)/scrollkeeper/Templates/|data_link_dir = |g; \
		     s|\$$\(LN_S\) -f -n \$$\(DESTDIR\)|\$$\(LN_S\) -f |g'
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
