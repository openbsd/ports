# $OpenBSD: Makefile,v 1.48 2017/11/21 00:13:02 naddy Exp $
#

COMMENT=	determine the malware activity on a network

DISTNAME=	nepenthes-0.2.2
EPOCH=		1
REVISION =	8

CATEGORIES=	net

HOMEPAGE=	http://nepenthes.mwcollect.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += adns c crypto curl iconv intl m magic nghttp2 pcap pcre pq>=4
WANTLIB += ssl ${COMPILER_LIBCXX} z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nepenthes/}

LIBTOOL_FLAGS+=	--tag=disable-static

LIB_DEPENDS=	net/adns \
		net/curl \
		devel/gettext \
		devel/libmagic \
		devel/pcre

FAKE_FLAGS+=	localstatedir='/var/nepenthes' \
		sysconfdir='${PREFIX}/share/examples'

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/nepenthes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/postgresql"

CXXFLAGS += -Wno-invalid-source-encoding -Wno-overloaded-virtual

CONFIGURE_ARGS+=--enable-debug-logging \
		--disable-mysql \
		--enable-postgre \
		--disable-capabilities \
		--with-curl-lib=${PREFIX}/lib

LIB_DEPENDS+=	databases/postgresql

pre-configure:
	@sed -i.beforesubst -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		-e "s,%%PREFIX%%,${PREFIX}," \
		${WRKBUILD}/conf/nepenthes.conf.dist
	@perl -pi.beforesubst -e 's:\"var\/log:\"\/var\/nepenthes\/log:g' \
		${WRKBUILD}/modules/log-download/log-download.conf.dist
	@perl -pi.beforesubst -e 's:\"var\/binaries:\"/var\/nepenthes\/binaries:g' \
		${WRKBUILD}/modules/submit-file/submit-file.conf.dist

.include <bsd.port.mk>
