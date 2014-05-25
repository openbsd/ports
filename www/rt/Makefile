# $OpenBSD: Makefile,v 1.28 2014/05/25 21:38:05 robert Exp $

COMMENT=		industrial-grade ticketing system

DISTNAME=		rt-4.0.20
CATEGORIES=		www

MAINTAINER=		Robert Nagy <robert@openbsd.org>

HOMEPAGE=		http://www.bestpractical.com/rt/

MASTER_SITES=		http://www.fsck.com/pub/rt/release/ \
			ftp://ftp.eu.uu.net/pub/unix/ticketing/rt/release/

RUN_DEPENDS=		converters/p5-Convert-Color \
			converters/p5-JSON \
			databases/p5-DBD-mysql \
			databases/p5-DBI \
			databases/p5-DBIx-SearchBuilder \
			devel/p5-Class-ReturnValue \
			devel/p5-Data-ICal \
			devel/p5-DateTime \
			devel/p5-Devel-GlobalDestruction \
			devel/p5-Devel-StackTrace \
			devel/p5-File-ShareDir \
			devel/p5-IPC-Run \
			devel/p5-IPC-Run-SafeHandles \
			devel/p5-IPC-Run3 \
			devel/p5-Locale-Maketext-Fuzzy \
			devel/p5-Locale-Maketext-Lexicon \
			devel/p5-Log-Dispatch \
			devel/p5-Module-Versions-Report \
			devel/p5-PerlIO-eol \
			devel/p5-Regexp-IPv6 \
			devel/p5-Term-ReadKey \
			devel/p5-Time-modules \
			devel/p5-Tree-Simple \
			devel/p5-Universal-require \
			graphics/gd \
			graphics/p5-GD-Graph \
			mail/p5-Email-Address \
			mail/p5-MIME-Types \
			mail/p5-MIME-tools \
			math/graphviz,-main \
			math/p5-GraphViz \
			net/p5-Net-CIDR \
			net/p5-Regexp-Common-net-CIDR \
			security/gnupg \
			security/p5-GnuPG-Interface \
			security/p5-Text-Password-Pronounceable \
			textproc/p5-List-UtilsBy \
			textproc/p5-Regexp-Common \
			textproc/p5-Text-Quoted \
			textproc/p5-Text-Quoted \
			textproc/p5-Text-Template \
			textproc/p5-Text-WikiFormat \
			textproc/p5-Text-Wrapper \
			textproc/p5-XML-RSS \
			www/fcgi \
			www/p5-Apache-Session \
			www/p5-CGI-Emulate-PSGI \
			www/p5-CGI-PSGI \
			www/p5-CSS-Squish \
			www/p5-HTML-Format \
			www/p5-HTML-Mason-PSGIHandler \
			www/p5-HTML-Quoted \
			www/p5-HTML-RewriteAttributes \
			www/p5-HTML-Scrubber \
			www/p5-HTML-Tree \
			www/p5-HTTP-Server-Simple-Mason \
			www/p5-JavaScript-Minifier \
			www/p5-Starlet \
			www/p5-Starman \
			www/p5-libwww

# GPL
PERMIT_PACKAGE_CDROM=   Yes

NO_BUILD=		Yes

PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-rt-group=bin \
			--enable-layout=OpenBSD \
			--enable-gpg \
			--enable-graphviz \
			--enable-gd

RUN_DEPENDS+=		security/gnupg \
			graphics/gd \
			math/graphviz,-main

BUILD_DEPENDS+=		security/gnupg \
			graphics/gd \
			math/graphviz,-main

FLAVORS=		pgsql sqlite
FLAVOR?=

.if ${FLAVOR:Mpgsql}
RUN_DEPENDS+=		databases/p5-DBD-Pg
CONFIGURE_ARGS+=	--with-db-type=Pg
.elif ${FLAVOR:Msqlite}
RUN_DEPENDS+=		databases/p5-DBD-SQLite
CONFIGURE_ARGS+=	--with-db-type=SQLite
.else
RUN_DEPENDS+=		databases/p5-DBD-mysql
.endif

# needs an initialized database and /etc/rt3/RT_Config.pm to be present
TEST_IS_INTERACTIVE=	Yes
TEST_TARGET=		test

pre-configure:
	@perl -pi -e 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/config.layout
	@perl -pi -e 's#%%SYSCONFDIR%%#${SYSCONFDIR}#' ${WRKSRC}/config.layout

post-install:
	@mv ${PREFIX}/sbin/standalone_httpd ${PREFIX}/sbin/rt-standalone_httpd

.include <bsd.port.mk>
