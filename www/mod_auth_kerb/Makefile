# $OpenBSD: Makefile,v 1.19 2013/06/17 19:31:25 ajacoutot Exp $

COMMENT=	Apache Kerberos authentication module

REVISION=	9
DISTNAME=	mod_auth_kerb-5.3
CATEGORIES=	www

HOMEPAGE=	http://modauthkerb.sourceforge.net/

MODULES+=	apache-module
MAINTAINER=	Jason Meltzer <jmeltzer@openbsd.org>

# combination of 2- and 3-clause BSD, MIT, and export crypto warnings
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 com_err crypto gssapi heimbase heimntlm hx509
WANTLIB += krb5 pthread roken wind

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=modauthkerb/}

NO_TEST=	Yes
USE_GMAKE=	Yes

MODAPACHE_NAME=	auth_kerb
MODAPACHE_LOCATION=	${WRKBUILD}/src

CONFIGURE_STYLE=gnu

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
