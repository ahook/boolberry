// Copyright (c) 2012-2013 The Boolberry developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#pragma once

#include <stdint.h>
#include <QObject>
#ifndef Q_MOC_RUN
#include "warnings.h"

PUSH_WARNINGS
DISABLE_VS_WARNINGS(4100)
DISABLE_VS_WARNINGS(4503)
#include "serialization/keyvalue_serialization.h"
#include "storages/portable_storage_template_helper.h"
#include "rpc/core_rpc_server_commands_defs.h"
#include "wallet/wallet_rpc_server_commans_defs.h"
POP_WARNINGS

#endif

namespace view
{

  /*slots structures*/
  struct transfer_destination
  {
    std::string address;
    std::string amount;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(address)
      KV_SERIALIZE(amount)
    END_KV_SERIALIZE_MAP()
  };

  struct transfer_params
  {
    uint64_t wallet_id;
    std::list<transfer_destination> destinations;
    uint64_t mixin_count;
    uint64_t lock_time;
    std::string payment_id;
    std::string comment;
    std::string fee;
    bool push_payer;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(wallet_id)
      KV_SERIALIZE(destinations)
      KV_SERIALIZE(mixin_count)
      KV_SERIALIZE(lock_time)
      KV_SERIALIZE(payment_id)
      KV_SERIALIZE(comment)
      KV_SERIALIZE(fee)
      KV_SERIALIZE(push_payer)
    END_KV_SERIALIZE_MAP()
  };

  struct transfer_response
  {
    bool success;
    std::string tx_hash;
    uint64_t    tx_blob_size;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(success)
      KV_SERIALIZE(tx_hash)
      KV_SERIALIZE(tx_blob_size)
    END_KV_SERIALIZE_MAP()
  };


  enum ui_last_build_displaymode
  {
    ui_lb_dm_actual = 0,
    ui_lb_dm_new = 1,
    ui_lb_dm_new_alert_calm = 2,
    ui_lb_dm_new_alert_urgent = 3,
    ui_lb_dm_new_alert_critical = 4
  };




  struct block_info
  {
    uint64_t date;
    uint64_t    h;
    std::string type;
    std::string diff;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(date)
      KV_SERIALIZE(h)
      KV_SERIALIZE(type)
      KV_SERIALIZE(diff)
    END_KV_SERIALIZE_MAP()
  };


  struct switch_view_info
  {
    enum ui_views
    {
      ui_view_dashboard = 1,
      ui_view_wallet = 2
    };

    int view;
    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(view)
    END_KV_SERIALIZE_MAP()
  };

  /*signal structures*/
  struct daemon_status_info
  {
public:

    uint64_t daemon_network_state;
    uint64_t synchronization_start_height;
    uint64_t max_net_seen_height;
    uint64_t height;
    uint64_t out_connections_count;
    uint64_t inc_connections_count;
    std::string pos_difficulty;
    std::string pow_difficulty;
    uint64_t hashrate;
    uint64_t last_build_displaymode;
    std::string last_build_available;
    std::list<block_info> last_blocks;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(daemon_network_state)
      KV_SERIALIZE(synchronization_start_height)
      KV_SERIALIZE(max_net_seen_height)
      KV_SERIALIZE(height)
      KV_SERIALIZE(out_connections_count)
      KV_SERIALIZE(inc_connections_count)
      KV_SERIALIZE(pos_difficulty)
      KV_SERIALIZE(pow_difficulty)
      KV_SERIALIZE(hashrate)
      KV_SERIALIZE(last_build_displaymode)
      KV_SERIALIZE(last_build_available)
      KV_SERIALIZE(last_blocks)
    END_KV_SERIALIZE_MAP()
  };




  struct wallet_status_info
  {
    enum state
    {
      wallet_state_synchronizing = 1,
      wallet_state_ready = 2
    };

    uint64_t wallet_id;
    uint64_t wallet_state;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(wallet_id)
      KV_SERIALIZE(wallet_state)
    END_KV_SERIALIZE_MAP()
  };  
  
  struct wallet_info
  {
    uint64_t unlocked_balance;
    uint64_t balance;
    std::string address;
    std::string tracking_hey;
    std::string path;
    uint64_t do_mint;
    uint64_t mint_is_in_progress;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(unlocked_balance)
      KV_SERIALIZE(balance)
      KV_SERIALIZE(address)
      KV_SERIALIZE(tracking_hey)
      KV_SERIALIZE(path)
      KV_SERIALIZE(do_mint)
      KV_SERIALIZE(mint_is_in_progress)
    END_KV_SERIALIZE_MAP()
  };



  struct wallet_entry_info
  {
    wallet_info wi;
    uint64_t    wallet_id;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(wi)
      KV_SERIALIZE(wallet_id)
    END_KV_SERIALIZE_MAP()

  };

  struct open_wallet_request
  {
    std::string pass;
    std::string path;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(pass)
      KV_SERIALIZE(path)
    END_KV_SERIALIZE_MAP()
  };


  struct wallet_id_obj
  {
    uint64_t wallet_id;
    
    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(wallet_id)
    END_KV_SERIALIZE_MAP()
  };


  struct system_filedialog_request
  {
    std::string default_dir;
    std::string caption;
    std::string filemask;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(caption)
      KV_SERIALIZE(filemask)
    END_KV_SERIALIZE_MAP()
  };

  struct system_filedialog_response
  {
    std::string error_code;
    std::string path;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(error_code)
      KV_SERIALIZE(path)
    END_KV_SERIALIZE_MAP()
  };

  struct push_offer_param
  {
    uint64_t wallet_id;
    currency::offer_details od;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(wallet_id)
      KV_SERIALIZE(od)
    END_KV_SERIALIZE_MAP()
  };

  struct transfer_event_info
  {
    tools::wallet_rpc::wallet_transfer_info ti;
    uint64_t unlocked_balance;
    uint64_t balance;
    uint64_t wallet_id;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(ti)
      KV_SERIALIZE(unlocked_balance)
      KV_SERIALIZE(balance)
      KV_SERIALIZE(wallet_id)
    END_KV_SERIALIZE_MAP()
  };

  struct transfers_array
  {
    std::vector<tools::wallet_rpc::wallet_transfer_info> unconfirmed;
    std::vector<tools::wallet_rpc::wallet_transfer_info> history;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(unconfirmed)
      KV_SERIALIZE(history)
    END_KV_SERIALIZE_MAP()

  };

  struct wallets_summary_info
  {
    std::list<wallet_entry_info> wallets;
    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(wallets)
    END_KV_SERIALIZE_MAP()
  };


  struct header_entry
  {
    std::string field;
    std::string val;
    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(field)
      KV_SERIALIZE(val)
    END_KV_SERIALIZE_MAP()
  };

  struct request_uri_params
  {
    std::string method;
    std::string data;
    std::vector<header_entry > headers;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(method)
      KV_SERIALIZE(data)
      KV_SERIALIZE(headers)
    END_KV_SERIALIZE_MAP()
  };

  struct password_data
  {
    std::string pass;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(pass)
    END_KV_SERIALIZE_MAP()
  };


  struct alias_set
  {
    std::list<currency::alias_rpc_details> aliases;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(aliases)
    END_KV_SERIALIZE_MAP()
  };

  struct api_response
  {
    std::string request_id;
    std::string error_code;

    BEGIN_KV_SERIALIZE_MAP()
      KV_SERIALIZE(request_id)
      KV_SERIALIZE(error_code)
    END_KV_SERIALIZE_MAP()

  };

  struct api_void
  {
    BEGIN_KV_SERIALIZE_MAP()
    END_KV_SERIALIZE_MAP()
  };


#define API_RETURN_CODE_OK                                      "OK"
#define API_RETURN_CODE_FAIL                                    "FAIL"
#define API_RETURN_CODE_INTERNAL_ERROR                          "INTERNAL_ERROR"
#define API_RETURN_CODE_INTERNAL_ERROR_QUE_FULL                 "INTERNAL_ERROR_QUE_FULL"
#define API_RETURN_CODE_BAD_ARG                                 "BAD_ARG"
#define API_RETURN_CODE_BAD_ARG_EMPTY_DESTINATIONS              "BAD_ARG_EMPTY_DESTINATIONS"
#define API_RETURN_CODE_BAD_ARG_WRONG_FEE                       "BAD_ARG_WRONG_FEE"
#define API_RETURN_CODE_BAD_ARG_INVALID_ADDRESS                 "BAD_ARG_INVALID_ADDRESS"
#define API_RETURN_CODE_BAD_ARG_WRONG_AMOUNT                    "BAD_ARG_WRONG_AMOUNT"
#define API_RETURN_CODE_BAD_ARG_WRONG_PAYMENT_ID                "BAD_ARG_WRONG_PAYMENT_ID"
#define API_RETURN_CODE_WRONG_PASSWORD                          "WRONG_PASSWORD"
#define API_RETURN_CODE_WALLET_WRONG_ID                         "WALLET_WRONG_ID"
#define API_RETURN_CODE_FILE_NOT_FOUND                          "FILE_NOT_FOUND"
#define API_RETURN_CODE_FILE_ALREADY_EXISTS                     "FILE_ALREADY_EXISTS"
#define API_RETURN_CODE_CANCELED                                "CANCELED"
#define API_RETURN_CODE_FILE_RESTORED                           "FILE_RESTORED"
#define API_RETURN_CODE_TRUE                                    "TRUE"
#define API_RETURN_CODE_FALSE                                   "FALSE"




  struct i_view
  {
    virtual bool update_daemon_status(const daemon_status_info& info)=0;
    virtual bool on_backend_stopped()=0;
    virtual bool show_msg_box(const std::string& message)=0;
    virtual bool update_wallet_status(const wallet_status_info& wsi)=0;
    virtual bool update_wallets_info(const wallets_summary_info& wsi) = 0;
    virtual bool money_transfer(const transfer_event_info& wsi) = 0;
//     virtual bool show_wallet()=0;
//     virtual bool hide_wallet()= 0;
//     virtual bool switch_view(int view_no)=0;
//     virtual bool set_recent_transfers(const transfers_array& ta) = 0;
    virtual bool set_html_path(const std::string& path)=0;
    virtual bool pos_block_found(const currency::block& block_found)=0;
  };

  struct view_stub: public i_view
  {
    virtual bool update_daemon_status(const daemon_status_info& /*info*/){return true;}
    virtual bool on_backend_stopped(){return true;}
    virtual bool show_msg_box(const std::string& /*message*/){return true;}
    virtual bool update_wallet_status(const wallet_status_info& /*wsi*/){return true;}
    virtual bool update_wallets_info(const wallets_summary_info& /*lwi*/){ return true; }
    virtual bool money_transfer(const transfer_event_info& /*wsi*/){ return true; }
//     virtual bool show_wallet(){return true;}
//     virtual bool hide_wallet(){ return true; }
//     virtual bool switch_view(int /*view_no*/){ return true; }
//     virtual bool set_recent_transfers(const transfers_array& /*ta*/){ return true; }
    virtual bool set_html_path(const std::string& path){ return true; };
    virtual bool pos_block_found(const currency::block& block_found){ return true; };
  };
}
