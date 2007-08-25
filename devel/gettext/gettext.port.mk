# $OpenBSD: gettext.port.mk,v 1.7 2007/08/25 13:48:23 naddy Exp $

MODGETTEXT_LIB_DEPENDS=	intl.>=4:gettext->=0.10.38:devel/gettext \
			iconv.>=4::converters/libiconv

MODGETTEXT_RUN_DEPENDS=	:gettext->=0.10.38:devel/gettext

# The RUN_DEPENDS entry is to ensure gettext is installed. This is
# necessary so that we have locale.alias installed on static archs.
# Typically installed in PREFIX/share/locale.
LIB_DEPENDS+=	${MODGETTEXT_LIB_DEPENDS}
BUILD_DEPENDS+=	:gettext->=0.16.1:devel/gettext
RUN_DEPENDS+=	${MODGETTEXT_RUN_DEPENDS}
