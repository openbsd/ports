# $OpenBSD: Makefile,v 1.55 2014/04/23 05:53:36 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	AFP file and print services for IP networks

DISTNAME=	netatalk-2.2.5
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netatalk/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://netatalk.sourceforge.net/

# GPLv2+ and BSD or similar
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto db gcrypt gpg-error pthread rpcsvc

MODULES=	devel/gettext
LIB_DEPENDS=	databases/db/v4 \
		security/libgcrypt 

USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-cups \
		--disable-overwrite \
		--disable-tcp-wrappers \
		--with-ssl-dir=/usr \
		--with-uams-path=${PREFIX}/lib/netatalk/uams \
		--without-ldap \
		--without-pam
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	avahi
FLAVOR?=

.if ${FLAVOR:Mavahi}
WANTLIB+=	avahi-client avahi-common dbus-1
LIB_DEPENDS+=	net/avahi
.else
CONFIGURE_ARGS+= --disable-zeroconf
.endif

NO_TEST=	Yes

post-build:
	@cd ${WRKSRC}/config; make afpd.conf AppleVolumes.default

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netatalk
	${INSTALL_DATA} ${WRKSRC}/doc/README.AppleTalk \
	    ${PREFIX}/share/doc/netatalk
	mv ${WRKINST}/etc/netatalk ${PREFIX}/share/examples/
	@find ${PREFIX}/lib/netatalk/uams -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib/netatalk/uams -name '*.la' -print | xargs rm

.include <bsd.port.mk>
