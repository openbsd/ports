PORTROACH=	limit:^2

COMMENT=	AFP file and print services for IP networks

DISTNAME=	netatalk-2.2.8
CATEGORIES=	net
SITES=		${SITE_SOURCEFORGE:=netatalk/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://netatalk.sourceforge.net/

# GPLv2+ and BSD or similar
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto db gcrypt gpg-error iconv intl

LIB_DEPENDS=	databases/db/v4 \
		security/libgcrypt 

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-cups \
		--disable-overwrite \
		--disable-tcp-wrappers \
		--disable-ddp \
		--disable-timelord \
		--disable-a2boot \
		--with-ssl-dir=/usr \
		--with-uams-path=${PREFIX}/lib/netatalk/uams \
		--without-ldap \
		--without-pam
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	avahi
FLAVOR?=

.if ${FLAVOR:Mavahi}
WANTLIB+=	avahi-client avahi-common dbus-1 pthread
LIB_DEPENDS +=	net/avahi,-libs
RUN_DEPENDS +=	net/avahi
.else
CONFIGURE_ARGS+= --disable-zeroconf
.endif

NO_TEST=	Yes

post-build:
	@cd ${WRKSRC}/config; make afpd.conf AppleVolumes.default

post-install:
	mv ${WRKINST}/etc/netatalk ${PREFIX}/share/examples/
	@find ${PREFIX}/lib/netatalk/uams \( -name '*.a' -o -name '*.la' \) \
	    -delete

.include <bsd.port.mk>
