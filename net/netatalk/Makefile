# $OpenBSD: Makefile,v 1.46 2013/02/09 14:49:52 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	AFP file and print services for IP networks

DISTNAME=	netatalk-2.2.3
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netatalk/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://netatalk.sourceforge.net/

# GPLv2+ and BSD or similar
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	asn1 c crypto db>=4 gcrypt gpg-error gssapi krb5 pthread \
		rpcsvc wrap

MODULES=	devel/gettext
LIB_DEPENDS=	databases/db/v4 \
		security/libgcrypt 

USE_GROFF=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-cups \
		--disable-overwrite \
		--enable-krbV-uam \
		--with-ssl-dir=/usr \
		--with-uams-path=${PREFIX}/lib/netatalk/uams \
		--without-acls \
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

NO_REGRESS=	Yes

post-extract:
	@${INSTALL} -m 555 ${FILESDIR}/krb5-config ${WRKDIR}/bin

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
