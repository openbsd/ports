# $OpenBSD: Makefile,v 1.40 2019/07/12 20:47:38 sthen Exp $

COMMENT =	mailing list manager with web interface

VERSION =	6.2.16
DISTNAME =	sympa-${VERSION}
REVISION =	2

CATEGORIES =	mail www

HOMEPAGE =	http://www.sympa.org

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}/distribution/ \
			${HOMEPAGE}/distribution/old/

MODULES =	perl
USE_GMAKE =	Yes

SYMPA_HOME =	/var/sympa

SUBST_VARS +=	SYMPA_HOME

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-modulesdir=${PREFIX}/${P5SITE} \
			--with-initdir=${PREFIX}/sbin \
			--without-smrshdir \
			--with-user=_sympa \
			--with-group=_sympa \
			--with-aliases_file=${SYMPA_HOME}/sympa_aliases \
			--with-confdir=${SYMPA_HOME}/etc \
			--with-expldir=${SYMPA_HOME}/list_data \
			--with-spooldir=${VARBASE}/spool/sympa \
			--with-staticdir=${VARBASE}/www/sympa \
			--with-cgidir=${PREFIX}/libexec/sympa \
			--libexecdir=${PREFIX}/libexec/sympa \
			--with-defaultdir=${PREFIX}/share/sympa \
			--with-docdir=${PREFIX}/share/examples/sympa \
			--sbindir=${PREFIX}/sbin \
			--with-postmap=${LOCALBASE}/sbin/postmap \
			--with-postalias=${LOCALBASE}/sbin/postalias \
			--with-piddir=${VARBASE}/run/sympa \
			--with-lockdir=${VARBASE}/spool/lock \
			--with-localedir=${PREFIX}/share/locale

# no LIB_DEPENDS, doesn't link with it
BUILD_DEPENDS =	devel/gettext,-runtime
# for postmap check
BUILD_DEPENDS +=	mail/postfix/stable
WANTLIB =	c

RUN_DEPENDS =	archivers/p5-Archive-Zip \
		converters/p5-Unicode-LineBreak>=2011.05 \
		databases/p5-DBI \
		devel/gettext,-runtime \
		devel/p5-IO-stringy \
		devel/p5-File-Copy-Recursive \
		devel/p5-Class-Singleton \
		devel/p5-libintl \
		devel/p5-DateTime-Format-Mail \
		devel/p5-DateTime-TimeZone \
		devel/p5-Term-ProgressBar \
		net/p5-Net-Netmask \
		net/p5-Net-CIDR \
		mail/p5-MIME-tools \
		mail/p5-MIME-Charset \
		mail/p5-MIME-EncWords \
		mail/p5-MIME-Lite-HTML \
		security/p5-IO-Socket-SSL \
		security/p5-Crypt-CipherSaber \
		sysutils/p5-File-NFSLock \
		textproc/p5-Template \
		textproc/p5-XML-LibXML \
		www/spawn-fcgi \
		www/mhonarc \
		www/p5-libwww \
		www/p5-CGI \
		www/p5-HTML-Format \
		www/p5-HTML-StripScripts-Parser \
		www/p5-HTML-Tree

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/lib/Sympa/ConfDef.pm

post-install:
	# taken from Makefile's installconfig target
	env PERL5LIB=${PREFIX}/${P5SITE} \
		${PREFIX}/sbin/sympa_wizard.pl --create sympa.conf \
		--target ${PREFIX}/share/examples/sympa/sympa.conf
	echo ${VERSION} > ${PREFIX}/share/examples/sympa/data_structure.version
	mv ${PREFIX}/../../var/www/sympa ${PREFIX}/share/sympa/wwwroot

.include <bsd.port.mk>
