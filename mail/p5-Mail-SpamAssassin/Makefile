# $OpenBSD: Makefile,v 1.113 2019/07/12 20:47:35 sthen Exp $

COMMENT=		mailfilter to identify and mark spam

VER=			3.4.2
DISTNAME=		Mail-SpamAssassin-${VER}
PKGNAME=		p5-${DISTNAME}
REVISION=		1
RULESNAME=		Mail-SpamAssassin-rules-${VER}.r1840640.tgz
CATEGORIES=		mail perl5

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} ${RULESNAME}
EXTRACT_SUFX=		.tar.bz2
EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

HOMEPAGE=		http://spamassassin.apache.org/

# Apache Software License (v2)
PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto ssl z

MASTER_SITES=		${MASTER_SITE_APACHE:=spamassassin/source/}

COMMON_DEPENDS=		www/p5-HTML-Parser>=3.31 \
			mail/p5-Mail-DKIM>=0.31 \
			net/p5-Net-DNS>=0.34 \
			net/p5-NetAddr-IP \
			security/p5-IO-Socket-SSL

BUILD_DEPENDS=		${COMMON_DEPENDS}
RUN_DEPENDS=		${COMMON_DEPENDS} \
			devel/re2c \
			devel/p5-BSD-Resource \
			p5-Mail-SPF-*|p5-Mail-SPF-Query-*:mail/p5-Mail-SPF \
			p5-GeoIP2-*|p5-IP-Country-DB_File-*|p5-IP-Country-*:net/p5-GeoIP2 \
			net/p5-Net-LibIDN \
			net/p5-Net-Patricia \
			security/gnupg \
			textproc/p5-Encode-Detect \
			curl-*|p5-libwww-*:net/curl \
			www/p5-HTTP-Date
TEST_DEPENDS=		${RUN_DEPENDS} \
			databases/p5-BerkeleyDB \
			devel/p5-Devel-Cycle \
			mail/razor-agents \
			net/p5-Sys-Hostname-Long

MAKE_ENV+=		CC="${CC}"

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	DESTDIR=${WRKINST} \
			SYSCONFDIR=${SYSCONFDIR} \
			LOCALSTATEDIR=${LOCALSTATEDIR} \
			CONTACT_ADDRESS="the administrator of this system" \
			ENABLE_SSL="yes"

CONFDIR=		${SYSCONFDIR}/mail/spamassassin
LOCALSTATEDIR=		/var/db/spamassassin
SAMPLE_CONFDIR=		${PREFIX}/share/examples/SpamAssassin

SUBST_VARS=		CONFDIR

# test insists on creating files in $HOME
PORTHOME=		${WRKDIR}/temp-home

DOCS=		CREDITS NOTICE README UPGRADE USAGE LICENSE TRADEMARK \
		procmailrc.example sample-nonspam.txt sample-spam.txt

# handling this in the extract stage (rather than untarring directly under
# PREFIX in post-install) allows us to patch the rules if necessary.
_R=		${WRKSRC}/_dist_rules
post-extract:
	mkdir ${_R} && cd ${_R} && tar xzf ${FULLDISTDIR}/${RULESNAME}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/Mail/SpamAssassin/Util.pm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin/ldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/SpamAssassin/sql
	${INSTALL_DATA_DIR} ${SAMPLE_CONFDIR}
	${INSTALL_DATA} ${WRKSRC}/rules/local.cf ${WRKSRC}/rules/*.pre \
		${SAMPLE_CONFDIR}
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/SpamAssassin
.endfor
	${INSTALL_DATA} ${WRKSRC}/ldap/* ${PREFIX}/share/doc/SpamAssassin/ldap
	${INSTALL_DATA} ${WRKSRC}/sql/* ${PREFIX}/share/doc/SpamAssassin/sql
	cp -r ${_R}/* ${PREFIX}/share/spamassassin/
	chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/spamassassin/*

pre-test:
	mkdir -p ${PORTHOME}

.include <bsd.port.mk>
