# $OpenBSD: Makefile,v 1.1.1.1 2006/10/18 13:54:06 aanriot Exp $

COMMENT=	"administration and development platform for PostgreSQL"

VERSION=	1.4.3
DISTNAME=	pgadmin3-${VERSION}
CATEGORIES=	databases devel

HOMEPAGE=	http://www.pgadmin.org/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c crypto m pthread ssl stdc++

MASTER_SITES=	ftp://ftp.postgresql.org/pub/pgadmin3/release/v${VERSION}/src/

LIB_DEPENDS=	wx_base_xml,wx_base_odbc,wx_gtk2_html,wx_gtk2_stc,wx_gtk2_ogl,wx_gtk2_adv,wx_gtk2_xrc,wx_base_net,wx_gtk2_dbgrid,wx_gtk2_qa,wx_base,wx_gtk2_core:wxWidgets-gtk2->=2.6.3:x11/wxWidgets \
		pq.>=4::databases/postgresql

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CXXFLAGS}"

CONFIGURE_ARGS=	--with-pgsql=${LOCALBASE} \
		--with-pgsql-include=${LOCALBASE}/include/postgresql \
		--with-wx=${LOCALBASE}/bin

DOCDIR=		share/doc/pgadmin3

pre-build:
	@perl -pi -e 's,%%DOCDIR%%,${LOCALBASE}/${DOCDIR},g' \
		${WRKSRC}/src/base/appbase.cpp
 
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}/
	@cp -R ${WRKSRC}/docs/* ${PREFIX}/${DOCDIR}/

.include <bsd.port.mk>
