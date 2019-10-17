# $OpenBSD: Makefile,v 1.47 2019/10/17 06:32:20 robert Exp $

COMMENT=		industrial-grade ticketing system

DISTNAME=		rt-4.4.4
CATEGORIES=		www

REVISION=		1

MAINTAINER=		Robert Nagy <robert@openbsd.org>

HOMEPAGE=		http://www.bestpractical.com/rt/

MASTER_SITES=		https://download.bestpractical.com/pub/rt/release/ \
			http://www.fsck.com/pub/rt/release/

RUN_DEPENDS=		converters/p5-Convert-ASN1 \
			converters/p5-Convert-Color \
			converters/p5-DateManip \
			converters/p5-JSON \
			databases/p5-DBD-mysql \
			databases/p5-DBI \
			databases/p5-DBIx-SearchBuilder \
			databases/p5-Data-Page \
			devel/p5-Class-ReturnValue \
			devel/p5-Data-UUID \
			devel/p5-Data-GUID \
			devel/p5-Data-ICal \
			devel/p5-Date-Extract \
			devel/p5-DateTime \
			devel/p5-DateTime-Format-Natural \
			devel/p5-Devel-GlobalDestruction \
			devel/p5-Devel-StackTrace \
			devel/p5-File-ShareDir \
			devel/p5-IPC-Run \
			devel/p5-IPC-Run-SafeHandles \
			devel/p5-IPC-Run3 \
			devel/p5-Locale-Maketext-Fuzzy \
			devel/p5-Locale-Maketext-Lexicon \
			devel/p5-Log-Dispatch \
			devel/p5-Module-Pluggable \
			devel/p5-Module-Refresh \
			devel/p5-Module-Versions-Report \
			devel/p5-PerlIO-eol \
			devel/p5-Regexp-IPv6 \
			devel/p5-Role-Basic \
			devel/p5-Scope-Upper \
			devel/p5-Symbol-Global-Name \
			devel/p5-Time-modules \
			devel/p5-Tree-Simple \
			devel/p5-Universal-require \
			graphics/gd \
			graphics/p5-GD-Graph \
			mail/p5-Email-Address \
			mail/p5-Email-Address-List \
			mail/p5-Mail-Tools \
			mail/p5-MIME-Types \
			mail/p5-MIME-tools \
			math/graphviz,-main \
			math/p5-Business-Hours \
			math/p5-GraphViz \
			math/p5-Set-IntSpan \
			net/p5-Net-CIDR \
			net/p5-Net-IP \
			net/p5-Regexp-Common-net-CIDR \
			security/gnupg \
			security/p5-Crypt-Eksblowfish \
			security/p5-Crypt-SSLeay \
			security/p5-Crypt-X509 \
			security/p5-GnuPG-Interface \
			security/p5-Text-Password-Pronounceable \
			sysutils/p5-File-Which \
			textproc/p5-List-UtilsBy \
			textproc/p5-Regexp-Common \
			textproc/p5-String-ShellQuote \
			textproc/p5-Text-Quoted \
			textproc/p5-Text-Template \
			textproc/p5-Text-WikiFormat \
			textproc/p5-Text-Wrapper \
			textproc/p5-XML-RSS \
			www/fcgi \
			www/p5-Apache-Session \
			www/p5-CGI-Emulate-PSGI \
			www/p5-CGI-PSGI \
			www/p5-CSS-Minifier-XS \
			www/p5-CSS-Squish \
			www/p5-Data-Page-Pageset \
			www/p5-HTML-Format \
			www/p5-HTML-FormatText-WithLinks \
			www/p5-HTML-FormatText-WithLinks-AndTables \
			www/p5-HTML-Mason-PSGIHandler \
			www/p5-HTML-Quoted \
			www/p5-HTML-RewriteAttributes \
			www/p5-HTML-Scrubber \
			www/p5-HTML-Tree \
			www/p5-HTTP-Server-Simple-Mason \
			www/p5-JavaScript-Minifier \
			www/p5-JavaScript-Minifier-XS \
			www/p5-Starlet \
			www/p5-Starman \
			www/p5-libwww

# GPL
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes

PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-rt-group=bin \
			--enable-layout=OpenBSD \
			--enable-gpg \
			--enable-graphviz \
			--enable-gd

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
TEST_DEPENDS=		devel/p5-Log-Dispatch-Perl
# fill these in with appropriate values
TEST_ENV=		RT_DBA_USER=rt_user RT_DBA_PASSWORD=1234

post-install:
	@mv ${PREFIX}/sbin/standalone_httpd ${PREFIX}/sbin/rt-standalone_httpd

.include <bsd.port.mk>
